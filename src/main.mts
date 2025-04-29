import os from "os";
import * as readline from "readline";
import { execSync } from "child_process";
import chalk from "chalk";
import {
  FunctionCallingConfigMode,
  FunctionDeclaration,
  GoogleGenAI,
  Tool,
  ToolConfig,
  Type,
} from "@google/genai";

import { handleChildSIGINT } from "./tools/task-state.mjs";
import { bashCommandTool } from "./tools/bash-commad.mjs";
import { nodejsScriptTool } from "./tools/nodejs-script.mjs";
import { filesReadTool } from "./tools/files-read.mjs";
import { filesWriteTool } from "./tools/files-write.mjs";
import { googleSearchTool } from "./tools/google-search.mjs";

// Initialize the Generative AI client
const genAi = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });

const geminiBaseUrl = process.env.GEMINI_BASE_URL;

// 添加一个函数来生成上下文提醒
const getContextReminder = () => {
  return (
    "提醒: 你是一个命令行助手, 请在每次回答时都考虑一下, 这些工具来帮助用户, 如果可以就调用:\n" +
    "1. 使用 executeBashCommand 执行 bash 命令\n" +
    "2. 使用 executeNodeCode 执行 Node.js 代码\n" +
    "3. 使用 createMultipleFiles 同时创建多个文件\n" +
    "4. 使用 readMultipleFiles 读取文件内容\n" +
    "5. 使用 groundSearch 搜索最新信息\n"
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

let toolsDict: Record<
  string,
  {
    shortName: string;
    toolFn: (args: any) => Promise<any>;
    previewFn: (args: any) => void;
    declaration: FunctionDeclaration;
  }
> = {
  executeBashCommand: bashCommandTool,
  executeNodeCode: nodejsScriptTool,
  createMultipleFiles: filesReadTool,
  readMultipleFiles: filesReadTool,
  groundSearch: googleSearchTool,
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
        mode: FunctionCallingConfigMode.AUTO, // Let the model decide when to call the function
      },
    };

    let tools: Tool[] = [
      {
        functionDeclarations: [
          bashCommandTool.declaration,
          nodejsScriptTool.declaration,
          filesReadTool.declaration,
          filesWriteTool.declaration,
          googleSearchTool.declaration,
        ],
      },
    ];

    // Create a chat session with the defined tool
    const chat = genAi.chats.create({
      model: "gemini-2.0-flash-lite",
      config: {
        httpOptions: {
          baseUrl: geminiBaseUrl,
        },
        tools,
        toolConfig,
      },
      history: [
        {
          role: "user",
          parts: [
            {
              text:
                "你是一个命令行助手，每次回答都可以考虑是否有合适的工具可以提供帮助, 如果可以, 调用工具来解答. 系统初始化配置:\n" +
                "- 你可以调用 executeBashCommand 执行 bash 命令\n" +
                "- 你可以调用 executeNodeCode 执行 Node.js 代码\n" +
                "也可以使用这些工具收集相关信息用于后续回复\n" +
                "使用中文回复，但代码保持英文. 输出环境为命令行, Markdown 效果不大减少使用.\n" +
                `你并不是完全隔离在沙箱当中的, 调用 nodejs 可以完成大量任务. 当前系统信息: ${osInfo}\n` +
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
        "继续上一个会话的计划";

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
      const response = await chat.sendMessageStream({ message: question });
      for await (const chunk of response) {
        let responseMessage = chunk.text;
        let responseFunctionCalls =
          chunk.functionCalls != null && chunk.functionCalls.length > 0
            ? chunk.functionCalls
            : undefined;

        if (responseMessage != null) {
          process.stdout.write(responseMessage);
        }
        if (responseFunctionCalls) {
          for (const functionCall of responseFunctionCalls) {
            let tool = toolsDict[functionCall.name!];
            const args: any = functionCall.args;
            if (tool) {
              // Ask for user confirmation
              console.log(`\n${tool.shortName} to execute:\n`);
              tool.previewFn(args);
              const confirmation = await ask(
                `\nExecute this ${tool.shortName} script? (y/n): `
              );

              if (sayingOk(confirmation)) {
                console.log(
                  chalk.gray(`\nExecuting ${tool.shortName} command...`)
                );

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

        if (responseMessage == null && responseFunctionCalls == null) {
          console.warn("unknown chunk:", chunk);
        }
      }

      // clear the next question cache
      nextQuestion = "";
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
