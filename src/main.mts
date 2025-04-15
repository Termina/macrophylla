import {
  GoogleGenerativeAI,
  FunctionCallingMode,
  Tool,
  SchemaType,
  ToolConfig,
} from "@google/generative-ai";
import os from "os";
import * as readline from "readline";
import fs from "node:fs/promises";
import path from "node:path";
import { execSync } from "child_process";
import chalk from "chalk";
import { execBash, executeNodeJsCode } from "./exec.mjs";
import { displayBoxedText } from "./util.mjs";
import { GoogleGenAI } from "@google/genai";
import { handleChildSIGINT } from "./task-state.mjs";

// Initialize the Generative AI client
const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY!);
const aiNew = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });

const geminiBaseUrl = process.env.GEMINI_BASE_URL;

const model = genAI.getGenerativeModel(
  // { model: "gemini-1.5-flash" },
  { model: "gemini-2.0-flash-lite" },
  { baseUrl: geminiBaseUrl }
);

// 添加一个函数来生成上下文提醒
const getContextReminder = () => {
  return (
    "提醒: 你是一个命令行助手。你可以:\n" +
    "1. 使用 executeBashCommand 执行 bash 命令\n" +
    "2. 使用 executeNodeCode 执行 Node.js 代码\n" +
    "3. 使用 createMultipleFiles 同时创建多个文件\n" +
    "4. 使用 readMultipleFiles 读取文件内容\n" +
    "5. 使用 groundSearch 搜索最新信息\n" +
    "请在每次回答时都考虑使用这些工具来帮助用户。"
  );
};

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.on("SIGINT", () => {
  let hitChild = handleChildSIGINT();
  if (hitChild) {
    console.log(chalk.gray("\nReceived SIGINT signal, killed child process"));
  } else {
    rl.close();
    process.exit(0);
  }
});

const ask = (question: string, seperator: boolean = false) => {
  if (seperator) {
    console.log(chalk.gray("\n" + "─".repeat(50)));
  }
  return new Promise<string>((resolve) => {
    rl.question(chalk.cyan(question), (answer) => {
      resolve(answer);
    });
  });
};

const sayingOk = (message: string) => {
  return (
    message === "ok" || message === "yes" || message === "y" || message === ""
  );
};

const tools: Tool[] = [
  {
    functionDeclarations: [
      {
        name: "executeBashCommand",
        description:
          "provide bash command, run in system, and return the output. it can access file system. also called 'bash 脚本'",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            command: {
              type: SchemaType.STRING,
              description: "The bash command to execute",
            },
          },
          required: ["command"],
        },
      },
      {
        name: "executeNodeCode",
        description:
          "provide node.js script in ES Module syntax. Execute in system and return the output. it can access the file system. also called 'node.js 脚本'",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            code: {
              type: SchemaType.STRING,
              description:
                "The Node.js code to execute. Must use ES module syntax. Write self-contained code that doesn't depend on external files.",
            },
          },
          required: ["code"],
        },
      },
      {
        name: "createMultipleFiles",
        description:
          "create multiple files called entries, on the current working directory",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            entries: {
              description: "an array of entries to create",
              type: SchemaType.ARRAY,
              items: {
                type: SchemaType.OBJECT,
                properties: {
                  code: {
                    type: SchemaType.STRING,
                    description: "any code that you want to save to file",
                  },
                  filepath: {
                    type: SchemaType.STRING,
                    description:
                      "the path to save the file, relative to the current working directory",
                  },
                },
                required: ["code", "filepath"],
              },
            },
          },
        },
      },
      {
        name: "readMultipleFiles",
        description:
          "read multiple files in utf8. it can access the file system. also called '读取文本文件'",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            entries: {
              type: SchemaType.ARRAY,
              description: "an array of entries to read",
              items: {
                type: SchemaType.STRING,
                description:
                  "the path to read, relative to the current working directory",
              },
            },
          },
        },
      },
      {
        name: "groundSearch",
        description:
          "search the web for the latest information, with gemini groundSearch",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            query: {
              type: SchemaType.STRING,
              description: "The search query",
            },
          },
          required: ["query"],
        },
      },
    ],
  },
];

let toolsDict: Record<
  string,
  {
    shortName: string;
    toolFn: (args: any) => Promise<any>;
    previewFn: (args: any) => void;
  }
> = {
  executeBashCommand: {
    shortName: "Bash",
    toolFn: async (args: any) => {
      const command = args.command;
      return await execBash(command);
    },
    previewFn: (args: any) => {
      displayBoxedText(args.command);
    },
  },
  executeNodeCode: {
    toolFn: async (args: any) => {
      const code = args.code;
      const tempDir = path.join(process.cwd(), "./");
      return await executeNodeJsCode(code, tempDir);
    },
    shortName: "Node.js",
    previewFn: (args: any) => {
      displayBoxedText(args.code);
    },
  },
  createMultipleFiles: {
    shortName: "batch create/save files",
    previewFn: (args: any) => {
      let entries = args.entries as Array<{
        code: string;
        filepath: string;
      }>;
      let previews = entries
        .map((entry) => {
          return `File: ${chalk.yellow(
            entry.filepath
          )}\n-------------\nCode:\n${entry.code}`;
        })
        .join("\n--------------\n");
      displayBoxedText(previews);
    },
    toolFn: async (args: any) => {
      let entries = args.entries as Array<{
        code: string;
        filepath: string;
      }>;
      let results = await Promise.allSettled(
        entries.map(async (entry) => {
          const code = entry.code;
          const filepath = entry.filepath as string;

          const filePath = filepath.startsWith("/")
            ? filepath
            : path.join("./", filepath);

          // Ensure the directory exists
          const dirPath = path.dirname(filePath);
          await fs.mkdir(dirPath, { recursive: true });
          // The recursive option means it won't error if directory already exists
          console.log(chalk.gray(`Ensured directory exists: ${dirPath}`));

          console.log(`created ${filePath}`);
          await fs.writeFile(filePath, code);
          return `Created ${filePath}.`;
        })
      );
      return {
        stdout: results
          .map((result) => {
            if (result.status === "fulfilled") {
              return result.value;
            } else {
              return `Error saving file: ${result.reason}`;
            }
          })
          .join("\n"),
        stderr: "",
        success: results.every((result) => result.status === "fulfilled"),
      };
    },
  },
  readMultipleFiles: {
    shortName: "batch multiple files",
    previewFn: (args: any) => {
      displayBoxedText(`Reading file ${args.entries.join(", ")}`);
    },
    toolFn: async (args: any) => {
      let entries = args.entries as Array<string>;
      let results = await Promise.allSettled(
        entries.map(async (entry) => {
          const filepath = entry as string;
          const filePath = filepath.startsWith("/")
            ? filepath
            : path.join("./", filepath);
          console.log(`Reading file ${filePath}`);
          const data = await fs.readFile(filePath, "utf8");
          return data;
        })
      );

      return {
        stdout: JSON.stringify(results),
        stderr: "",
        success: results.every((result) => result.status === "fulfilled"),
      };
    },
  },
  groundSearch: {
    shortName: "Ground Search",
    previewFn: (args: any) => {
      displayBoxedText(`Searching the web for ${args.query}`);
    },
    toolFn: async (args: any) => {
      const query = args.query as string;
      console.log(`Searching the web for ${query}`);

      try {
        const response = await aiNew.models.generateContent({
          model: "gemini-2.0-flash",
          contents: [query],
          config: {
            tools: [{ googleSearch: {} }],
            httpOptions: {
              baseUrl: geminiBaseUrl,
            },
          },
        });
        let result = response.text;
        console.log(chalk.gray(result));
        // To get grounding metadata as web content.
        // response?.candidates?.[0].groundingMetadata?.searchEntryPoint
        //   ?.renderedContent;
        if (result) {
          return {
            stdout: result,
            stderr: "",
            success: true,
          };
        } else {
          return {
            stdout: "",
            stderr: "No result found.",
            success: false,
          };
        }
      } catch (err) {
        console.error("Error:", err);
        return {
          stdout: "",
          stderr: `Error searching the web: ${err.message}`,
          success: false,
        };
      }
    },
  },
};

const main = async () => {
  let osInfo = `${process.platform}, 架构: ${process.arch}, CPU 核心数: ${
    os.cpus().length
  }.`;
  let nodeInfo = `${process.version}, 当前目录: ${process.cwd()}.`;
  let bashInfo = execSync("bash --version | head -n 1");

  try {
    // Create a chat session
    // Define a function declaration tool

    // Configure tool settings
    const toolConfig: ToolConfig = {
      functionCallingConfig: {
        mode: FunctionCallingMode.AUTO, // Let the model decide when to call the function
      },
    };

    // Create a chat session with the defined tool
    const chat = model.startChat({
      tools,
      toolConfig,
      history: [
        {
          role: "user",
          parts: [
            {
              text:
                "系统初始化配置:\n" +
                "1. 你是一个专业的命令行助手，工作在当前进程目录下\n" +
                "2. 你可以调用 executeBashCommand 执行 bash 命令\n" +
                "3. 你可以调用 executeNodeCode 执行 Node.js 代码\n" +
                "4. 每次回答都应该考虑使用这些工具收集信息\n" +
                "5. 使用中文回复，但代码保持英文\n" +
                "6. 失败时要理解上下文并优化重试\n" +
                `当前系统信息: ${osInfo}\n` +
                `Node.js 信息: ${nodeInfo}\n` +
                `Bash 信息: ${bashInfo}`,
            },
          ],
        },
      ],
    });

    let nextQuestion: string = "";
    let messageCount = 0;

    outerWhile: while (true) {
      if (nextQuestion) {
        console.log(chalk.gray("\n" + nextQuestion + "\n"));
      }
      let question =
        nextQuestion ||
        (await ask("\nWhat's the task: ", true)) ||
        "继续未完成的任务, 没有的话尝试建议接下来的任务";

      if (question.toLowerCase() === "exit") {
        console.log("\nBye!");
        break;
      }
      // 每隔 5 轮对话，插入上下文提醒
      messageCount++;
      if (messageCount % 10 === 0) {
        const reminder = getContextReminder();
        console.log(chalk.gray("\n\n" + reminder));
        question = `${reminder}\n\n${question}`;
      }

      console.log(chalk.gray("\nResponding...\n"));

      // Use the chat API to send messages and get streaming responses
      const response = await chat.sendMessageStream(question);
      for await (const chunk of response.stream) {
        process.stdout.write(chunk.text());
      }

      // clear the next question cache
      nextQuestion = "";

      // Handle function calls if any
      const functionCalls = (await response.response).functionCalls() || [];

      for (const functionCall of functionCalls) {
        let tool = toolsDict[functionCall.name];
        const args: any = functionCall.args;
        if (tool) {
          // Ask for user confirmation
          console.log(`\n${tool.shortName} to execute:\n`);
          tool.previewFn(args);
          const confirmation = await ask(
            `\nExecute this ${tool.shortName} script? (y/n): `
          );

          if (sayingOk(confirmation)) {
            console.log(chalk.gray(`\nExecuting ${tool.shortName} command...`));

            try {
              const result = await tool.toolFn(args);
              if (result.stderr) {
                console.log(chalk.red("运行失败\n" + result.stderr));
              } else {
                console.log(chalk.green("运行完成."));
              }

              nextQuestion = JSON.stringify(result);
              continue outerWhile;
            } catch (error) {
              const result = {
                stdout: error.stdout || "",
                stderr: error.stderr || error.message,
                success: false,
              };
              console.log("\n");
              console.log("Command failed:", result);

              nextQuestion = `命令执行过程当中失败: ${result.stderr}, 你能否改进一下方案?`;
              continue outerWhile;
            }
          } else {
            nextQuestion = `用户拒绝了这条命令: (${confirmation}), 尝试改进一下方案.`;
            continue outerWhile;
          }
        } else {
          console.log(
            chalk.red(
              `\n\nError: Unsupported function call ${functionCall.name}`
            )
          );
          nextQuestion = `不支持的函数调用: ${functionCall.name}, 你能否改进一下方案?`;
          continue outerWhile;
        }
      }
    }
  } catch (err) {
    console.error("Error:", err);
    rl.close();
    process.exit(1);
  } finally {
    rl.close();
  }
};

main();
