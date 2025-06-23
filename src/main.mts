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
import { filesWriteTool } from "./tools/files-read.mjs";
import { filesReadTool } from "./tools/files-write.mjs";
import { googleSearchTool } from "./tools/google-search.mjs";
import { MacrophyllaTool } from "./tools/type.mjs";
import { currentDirTool } from "./tools/current-dir.mjs";
import { changeDirTool } from "./tools/change-dir.mjs";
import { guideSteps } from "./tools/guide-steps.mjs";

// Initialize the Generative AI client
const genAi = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });

const geminiBaseUrl = process.env.GEMINI_BASE_URL;

// 添加一个函数来生成上下文提醒
const toolContextPrompt = () => {
  let osInfo = `${process.platform}, 架构: ${process.arch}, CPU 核心数: ${
    os.cpus().length
  }.`;
  let nodeInfo = `${process.version}, 当前目录: ${process.cwd()}.`;
  let bashInfo = execSync("bash --version | head -n 1");

  return (
    guideSteps +
    "使用中文回复，但代码保持英文. 输出环境为命令行, Markdown 效果不大减少使用. 你的职责是命令行助手, 请在每次回答时都尝试用工具来帮助用户, 如果可以就调用:\n" +
    "- 使用 current_dir tool 获取当前目录信息\n" +
    "- 使用 bash_command tool 执行 bash 命令\n" +
    "- 使用 nodejs_script tool 执行 Node.js 代码\n" +
    "- 使用 write_files tool 同时创建多个文件\n" +
    "- 使用 read_files tool 读取文件内容\n" +
    "- 使用 web_search tool 搜索最新信息\n" +
    "\n" +
    `你并不是完全隔离在沙箱当中的, 调用 nodejs 可以完成大量任务. 当前系统信息: ${osInfo}\n` +
    `Node.js 信息: ${nodeInfo}\n` +
    `Bash 信息: ${bashInfo}\n` +
    "如果输入的信息直接就是 Unix 命令, 那么直接用 bash_command tool 执行即可.\n"
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

let toolsDict: Record<string, MacrophyllaTool> = {
  [bashCommandTool.declaration.name!]: bashCommandTool,
  [nodejsScriptTool.declaration.name!]: nodejsScriptTool,
  [filesReadTool.declaration.name!]: filesReadTool,
  [filesWriteTool.declaration.name!]: filesWriteTool,
  [googleSearchTool.declaration.name!]: googleSearchTool,
  [currentDirTool.declaration.name!]: currentDirTool,
  [changeDirTool.declaration.name!]: changeDirTool,
};

const main = async () => {
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
          filesWriteTool.declaration,
          filesWriteTool.declaration,
          googleSearchTool.declaration,
          currentDirTool.declaration,
          changeDirTool.declaration,
        ],
      },
    ];

    // Create a chat session with the defined tool
    const chat = genAi.chats.create({
      model:
        process.env["MACROPHYLLA_MODEL"] || "gemini-2.5-flash-preview-05-20",
      config: {
        systemInstruction: toolContextPrompt(),
        httpOptions: {
          baseUrl: geminiBaseUrl,
        },
        tools,
        toolConfig,
        temperature: 0.2,
        thinkingConfig: {
          includeThoughts: true,
          thinkingBudget: 600,
        },
      },
      history: [
        // {
        //   role: "user",
        //   parts: [{ text: toolContextPrompt() }],
        // },
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
        const reminder = "重要提醒: " + toolContextPrompt();
        console.log(chalk.gray("\n\n(提醒)\n\n"));
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
              let confirmation = "ok";
              if (!tool.skipConfirmation) {
                confirmation = await ask(
                  `\nExecute this ${tool.shortName} script? (y/n): `
                );
              }

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

                  nextQuestion =
                    "answer based previous command response:\n" +
                    JSON.stringify(result);
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
        if (chunk.candidates?.[0].content?.parts?.[0]?.text) {
          console.log(
            chalk.gray(
              `\nThinking: ${chunk.candidates[0].content.parts[0].text}\n`
            )
          );
        } else if (responseMessage == null && responseFunctionCalls == null) {
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
