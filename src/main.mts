import * as readline from "readline";
import chalk from "chalk";
import {
  Content,
  FunctionCall,
  FunctionCallingConfigMode,
  GoogleGenAI,
  Part,
  Tool,
  ToolConfig,
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
import { toolContextPrompt } from "./tools/guide-steps.mjs";
import {
  rememberGoal,
  getGoal,
  finishGoal,
  updateWorkStepStatus,
  recordFailedAttempt,
} from "./tools/goal.mjs";

// --- Agent State Definition ---
interface AgentState {
  history: Content[];
  currentMessageParts: Part[];
}

// --- Tool & Model Configuration ---
const genAi = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });
const geminiBaseUrl = process.env.GEMINI_BASE_URL;
const verbose =
  (process.env.verbose || process.env.VERBOSE) === "true" || false;
const thinkingBudget = parseInt(
  process.env.thinking_budget || process.env.THINKING_BUDGET || "400",
  10
);

const toolsDict: Record<string, MacrophyllaTool> = {
  [getGoal.declaration.name!]: getGoal,
  [finishGoal.declaration.name!]: finishGoal,
  [rememberGoal.declaration.name!]: rememberGoal,
  [updateWorkStepStatus.declaration.name!]: updateWorkStepStatus,
  [recordFailedAttempt.declaration.name!]: recordFailedAttempt,
  [bashCommandTool.declaration.name!]: bashCommandTool,
  [nodejsScriptTool.declaration.name!]: nodejsScriptTool,
  [filesReadTool.declaration.name!]: filesReadTool,
  [filesWriteTool.declaration.name!]: filesWriteTool,
  [googleSearchTool.declaration.name!]: googleSearchTool,
  [currentDirTool.declaration.name!]: currentDirTool,
  [changeDirTool.declaration.name!]: changeDirTool,
};

const toolConfig: ToolConfig = {
  functionCallingConfig: { mode: FunctionCallingConfigMode.AUTO },
};
const tools: Tool[] = [
  { functionDeclarations: Object.values(toolsDict).map((t) => t.declaration) },
];

// --- Agent Nodes (Core Logic) ---

async function callModel(
  state: AgentState
): Promise<{ modelResponseParts: Part[]; toolCalls?: FunctionCall[] }> {
  console.log(chalk.gray("\nThinking...\n"));

  const chat = genAi.chats.create({
    model: process.env["MACROPHYLLA_MODEL"] || "gemini-2.5-flash",
    config: { systemInstruction: toolContextPrompt() },
    history: state.history,
  });

  const response = await chat.sendMessageStream({
    message: state.currentMessageParts,
    config: {
      httpOptions: { baseUrl: geminiBaseUrl },
      tools,
      toolConfig,
      temperature: 0.2,
      thinkingConfig:
        thinkingBudget > 256
          ? { includeThoughts: true, thinkingBudget: thinkingBudget }
          : undefined,
    },
  });

  const newToolCalls: FunctionCall[] = [];
  const modelResponseParts: Part[] = [];
  let textResponse = "";

  for await (const chunk of response) {
    if (chunk.functionCalls) {
      newToolCalls.push(...chunk.functionCalls);
    }
    const text = chunk.text;
    if (text) {
      textResponse += text;
      process.stdout.write(text);
    }
  }

  if (textResponse) {
    modelResponseParts.push({ text: textResponse });
  }
  if (newToolCalls.length > 0) {
    newToolCalls.forEach(call => {
      modelResponseParts.push({ functionCall: call });
    });
  }

  return {
    modelResponseParts,
    toolCalls: newToolCalls.length > 0 ? newToolCalls : undefined,
  };
}

async function executeTools(
  toolCalls: FunctionCall[]
): Promise<{ toolResultParts: Part[] }> {
  const toolResultParts: Part[] = [];

  for (const call of toolCalls) {
    const tool = call.name ? toolsDict[call.name] : undefined;
    if (!tool) {
      console.log(chalk.red(`\nError: Unsupported tool ${call.name}`));
      toolResultParts.push({
        functionResponse: {
          name: call.name,
          response: { error: `Unsupported tool: ${call.name}` },
        },
      });
      continue;
    }

    console.log(chalk.yellow(`\nExecuting ${tool.shortName}...`));
    tool.previewFn(call.args);

    let confirmation = "y";
    if (!tool.skipConfirmation) {
      confirmation = await ask(
        `\nExecute this ${tool.shortName} script? (y/n): `
      );
    }

    if (sayingOk(confirmation)) {
      try {
        const result = await tool.toolFn(call.args);
        toolResultParts.push({
          functionResponse: { name: call.name, response: result },
        });
        console.log(chalk.green("Execution finished."));
      } catch (error) {
        const errorMsg = error.stderr || error.message;
        console.log(chalk.red(`\nExecution failed: ${errorMsg}`));
        await recordFailedAttempt.toolFn({
          step: `(Attempting) ${tool.shortName}`,
          toolName: tool.shortName,
          toolArgs: call.args,
          error: errorMsg,
        });
        toolResultParts.push({
          functionResponse: {
            name: call.name,
            response: { error: errorMsg },
          },
        });
      }
    } else {
      console.log(chalk.gray("Execution skipped by user."));
      toolResultParts.push({
        functionResponse: {
          name: call.name,
          response: { error: "User skipped execution." },
        },
      });
    }
  }

  return { toolResultParts };
}

// --- User Interaction ---
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.on("SIGINT", () => {
  if (handleChildSIGINT()) {
    console.log(chalk.gray("\nSIGINT: Killed child process."));
  } else {
    rl.close();
    process.exit(0);
  }
});

const ask = (question: string, seperator: boolean = false) => {
  if (seperator) console.log(chalk.gray("\n" + "─".repeat(50)));
  return new Promise<string>((resolve) => {
    rl.question(chalk.cyan(question), resolve);
  });
};

const sayingOk = (message: string) =>
  ["ok", "yes", "y", ""].includes(message.toLowerCase());

// --- Main Agent Runner ---
const main = async () => {
  try {
    let history: Content[] = [];
    while (true) {
      const userInput =
        (await ask("\nWhat's the task: ", true)) || "继续上一个会话的计划";
      if (userInput.toLowerCase() === "exit") {
        console.log("\nBye!");
        break;
      }

      let state: AgentState = {
        history: history,
        currentMessageParts: [{ text: userInput }],
      };

      // The "Graph" or State Machine Loop
      while (true) {
        const { modelResponseParts, toolCalls } = await callModel(state);

        state.history.push(
          { role: "user", parts: state.currentMessageParts },
          { role: "model", parts: modelResponseParts }
        );

        if (!toolCalls || toolCalls.length === 0) {
          console.log(chalk.green("\nTask iteration complete."));
          history = state.history;
          break; 
        }

        const { toolResultParts } = await executeTools(toolCalls);

        state.currentMessageParts = toolResultParts;
      }
    }
  } catch (err) {
    console.error("Fatal Error:", err);
  } finally {
    rl.close();
  }
};

main();