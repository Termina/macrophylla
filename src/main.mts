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

// Initialize the Generative AI client
const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY!);
const model = genAI.getGenerativeModel(
  // { model: "gemini-1.5-flash" },
  { model: "gemini-2.0-flash-lite" },
  { baseUrl: "https://sf.chenyong.life" }
);

// 添加一个函数来生成上下文提醒
const getContextReminder = () => {
  return (
    "提醒: 你是一个命令行助手。你可以:\n" +
    "1. 使用 executeBashCommand 执行 bash 命令\n" +
    "2. 使用 executeNodeCode 执行 Node.js 代码\n" +
    "3. 使用 saveToFile 保存输出到文件\n" +
    "4. 使用 readTextFile 读取文件内容\n" +
    "请在每次回答时都考虑使用这些工具来帮助用户。"
  );
};

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const ask = (question: string, seperator: boolean = false) => {
  if (seperator) {
    console.log(
      chalk.gray("\n-------------------------------------------------")
    );
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
        name: "saveToFile",
        description:
          "save the output to a path based on the current working directory",
        parameters: {
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
        },
      },
      {
        name: "readTextFile",
        description:
          "read a text file and return the content(utf8). it can access the file system. also called '读取文本文件'",
        parameters: {
          type: SchemaType.OBJECT,
          properties: {
            filepath: {
              type: SchemaType.STRING,
              description:
                "the path to read, relative to the current working directory",
            },
          },
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
  saveToFile: {
    shortName: "Saving",
    previewFn: (args: any) => {
      displayBoxedText(
        `Saving to ${args.path}:\n-------------\n${args.code}...`
      );
    },
    toolFn: async (args: any) => {
      const code = args.code;
      const filepath = args.filepath as string;
      const filePath = filepath.startsWith("/")
        ? filepath
        : path.join("./", filepath);
      await fs.writeFile(filePath, code);
      return {
        stdout: `File saved to ${filePath}`,
        stderr: "",
        success: true,
      };
    },
  },
  readTextFile: {
    shortName: "Read File",
    previewFn: (args: any) => {
      displayBoxedText(`Reading file ${args.filepath}`);
    },
    toolFn: async (args: any) => {
      const filepath = args.filepath as string;
      const filePath = filepath.startsWith("/")
        ? filepath
        : path.join("./", filepath);
      try {
        console.log(`Reading file ${filePath}`);
        const data = await fs.readFile(filePath, "utf8");
        console.log(data);
        return {
          stdout: data,
          stderr: "",
          success: true,
        };
      } catch (error) {
        return {
          stdout: "",
          stderr: `Error reading file ${filePath}: ${error.message}`,
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
      let question =
        nextQuestion || (await ask("\nWhat's the task: ", true)) || "继续";

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
              const { stdout, stderr } = await tool.toolFn(args);
              const result = { stdout, stderr, success: true };
              if (result.success) {
                console.log(chalk.green("运行成功."));
              } else {
                console.log(chalk.red("运行失败\n" + result.stderr));
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
