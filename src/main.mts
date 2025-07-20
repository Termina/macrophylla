import * as readline from "readline";
import chalk from "chalk";
import {
  FunctionCallingConfigMode,
  FunctionDeclaration,
  GoogleGenAI,
  HarmBlockThreshold,
  Tool,
  ToolConfig,
  Type,
} from "@google/genai";

import { handleChildSIGINT } from "./tools/task-state.mjs";
import { bashCommandTool } from "./tools/bash-commad.mjs";
import { nodejsScriptTool } from "./tools/nodejs-script.mjs";
import { filesWriteTool } from "./tools/files-write.mjs";
import { filesReadTool } from "./tools/files-read.mjs";
import { googleSearchTool } from "./tools/google-search.mjs";
import { MacrophyllaTool } from "./tools/type.mjs";
import { currentDirTool } from "./tools/current-dir.mjs";
import { changeDirTool } from "./tools/change-dir.mjs";
import { guideSteps, toolContextPrompt } from "./tools/guide-steps.mjs";
import { goalTool, getGoal } from "./tools/goal.mjs";
import { formatThinObject } from "./util.mjs";

// Initialize the Generative AI client
const genAi = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });

const geminiBaseUrl = process.env.GEMINI_BASE_URL;

const verbose =
  (process.env.verbose || process.env.VERBOSE) === "true" || false;
const thinkingBudget = parseInt(
  process.env.thinking_budget || process.env.THINKING_BUDGET || "400",
  10
);

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
  [getGoal.declaration.name!]: getGoal,
  [goalTool.declaration.name!]: goalTool,
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
          getGoal.declaration,
          goalTool.declaration,
          bashCommandTool.declaration,
          nodejsScriptTool.declaration,
          filesReadTool.declaration,
          filesWriteTool.declaration,
          googleSearchTool.declaration,
          currentDirTool.declaration,
          changeDirTool.declaration,
        ],
      },
    ];

    // Create a chat session with the defined tool
    const chat = genAi.chats.create({
      model: process.env["MACROPHYLLA_MODEL"] || "gemini-2.5-flash",
      config: {
        systemInstruction: toolContextPrompt(),
      },
      // history: [{ role: "user", parts: [{ text: toolContextPrompt() }] }],
    });

    let nextQuestion: string = "";
    let messageCount = 0;

    outerWhile: while (true) {
      if (verbose && nextQuestion) {
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
      // if (messageCount % 10 === 0) {
      //   const reminder = "重要提醒: " + toolContextPrompt();
      //   if (verbose) {
      //     console.log(chalk.gray("\n\n(提醒)\n\n"));
      //   }
      //   question = `${reminder}\n\n${question}`;
      // }

      console.log(chalk.gray("\nResponding...\n"));

      // Use the chat API to send messages and get streaming responses
      const response = await chat.sendMessageStream({
        message:
          question +
          "(注意识别意图, 有新意图的话写入 remember_goal 工具, 记录任务目标和步骤. 不大清楚的时候查询通过 get_goal 工具来了解当前任务目标和步骤. 使用中文回复.)",
        config: {
          httpOptions: { baseUrl: geminiBaseUrl },
          tools,
          toolConfig,
          temperature: 0.2,
          // safetySettings: [{ threshold: HarmBlockThreshold.OFF }],
          thinkingConfig:
            thinkingBudget > 256
              ? { includeThoughts: true, thinkingBudget: thinkingBudget }
              : undefined,
        },
      });
      for await (const chunk of response) {
        let responseMessage = chunk.text;
        let textWritten = false;
        let responseFunctionCalls =
          chunk.functionCalls != null && chunk.functionCalls.length > 0
            ? chunk.functionCalls
            : undefined;

        if (responseMessage != null) {
          process.stdout.write(responseMessage);
          textWritten = true;
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
                  // result.originalQuestion = question;
                  // result.toolName = tool.shortName;

                  nextQuestion =
                    "answer based previous command response:\n" +
                    formatThinObject(result);
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
                nextQuestion = `存在问题, 要求改进调用方式: ${confirmation}.`;
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
          if (!textWritten && verbose) {
            console.log(
              chalk.gray(
                `\nThinking: ${chunk.candidates[0].content.parts[0].text}\n`
              )
            );
          }
        } else if (responseMessage == null && responseFunctionCalls == null) {
          console.warn("unknown chunk:", JSON.stringify(chunk));
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
