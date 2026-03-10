import * as readline from "readline";
import { parseArgs } from "node:util";
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

// --- Suppress Experimental Warning ---
const originalWarn = console.warn;
console.warn = (...args: any[]) => {
  if (
    typeof args[0] === "string" &&
    args[0].includes("Interactions usage is experimental")
  ) {
    return;
  }
  originalWarn(...args);
};

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
  history: any[];
  currentMessageParts: any[];
  lastInteractionId: string | null;
}

// --- Tool & Model Configuration ---
const { values: args } = parseArgs({
  options: {
    verbose: { type: "boolean", short: "v" },
    "thinking-budget": { type: "string", short: "b" },
    model: { type: "string", short: "m" },
    "base-url": { type: "string" },
  },
  strict: false,
});

const verbose =
  args.verbose ?? (process.env.verbose || process.env.VERBOSE) === "true";
const thinkingBudget = parseInt(
  (args["thinking-budget"] as string) ??
    process.env.thinking_budget ??
    process.env.THINKING_BUDGET ??
    "400",
  10,
);
const macrophyllaModel =
  (args.model as string) ??
  process.env["MACROPHYLLA_MODEL"] ??
  "gemini-3-flash-preview";
const geminiBaseUrl =
  (args["base-url"] as string) ?? process.env.GEMINI_BASE_URL;

const genAi = new GoogleGenAI({
  apiKey: process.env.GEMINI_API_KEY!,
  baseUrl: geminiBaseUrl,
} as any);

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

function normalizeSchema(schema: any): any {
  if (!schema) return schema;
  const newSchema = { ...schema };
  if (typeof newSchema.type === "number") {
    const types = [
      "unspecified",
      "string",
      "number",
      "integer",
      "boolean",
      "array",
      "object",
    ];
    newSchema.type = types[newSchema.type] || newSchema.type;
  }
  if (typeof newSchema.type === "string") {
    newSchema.type = newSchema.type.toLowerCase();
  }
  if (newSchema.properties) {
    const newProps: any = {};
    for (const key in newSchema.properties) {
      newProps[key] = normalizeSchema(newSchema.properties[key]);
    }
    newSchema.properties = newProps;
  }
  if (newSchema.items) {
    newSchema.items = normalizeSchema(newSchema.items);
  }
  return newSchema;
}

// --- Agent Nodes (Core Logic) ---

async function callModel(
  state: AgentState,
): Promise<{
  modelResponseParts: any[];
  toolCalls?: any[];
  interactionId: string;
}> {
  console.log(chalk.gray("\nThinking...\n"));

  const model = macrophyllaModel;
  const system_instruction = toolContextPrompt();

  const requestPayload: any = {
    model,
    system_instruction,
    input: state.currentMessageParts,
    stream: true,
    generation_config: {
      temperature: 0.2,
      thinking_level: thinkingBudget > 256 ? "high" : "low",
    },
    tools:
      tools.length > 0
        ? (tools[0] as any).functionDeclarations.map((d: any) => ({
            type: "function",
            name: d.name,
            description: d.description,
            parameters: normalizeSchema(d.parameters),
          }))
        : [],
  };

  if (state.lastInteractionId) {
    requestPayload.previous_interaction_id = state.lastInteractionId;
  } else if (state.history.length > 0) {
    // If we have history but no lastInteractionId, use stateless mode by sending full history
    requestPayload.input = state.history.concat([
      { role: "user", content: state.currentMessageParts },
    ]);
  }

  const response = await (genAi as any).interactions.create(requestPayload);

  const newToolCalls: any[] = [];
  const modelResponseParts: any[] = [];
  let textResponse = "";
  let interactionId = "";

  for await (const chunk of response) {
    if (chunk.event_type === "content.delta") {
      const delta = chunk.delta;
      if (delta.type === "text") {
        textResponse += delta.text;
        process.stdout.write(delta.text);
      } else if (delta.type === "thought") {
        if (verbose && delta.thought) {
          process.stdout.write(chalk.dim(delta.thought));
        }
      } else if (delta.type === "function_call") {
        newToolCalls.push(delta);
      }
    } else if (chunk.event_type === "interaction.complete") {
      interactionId = chunk.interaction?.id || "";
      const outputs = chunk.interaction?.outputs || [];
      if (Array.isArray(outputs)) {
        for (const output of outputs) {
          modelResponseParts.push(output);
          if (
            output.type === "function_call" &&
            !newToolCalls.some((c) => c.id === output.id)
          ) {
            newToolCalls.push(output);
          }
        }
      }
    }
  }

  if (textResponse && !modelResponseParts.some((p) => p.type === "text")) {
    modelResponseParts.push({ type: "text", text: textResponse });
  }

  return {
    modelResponseParts,
    toolCalls: newToolCalls.length > 0 ? newToolCalls : undefined,
    interactionId,
  };
}

async function executeTools(
  toolCalls: any[],
): Promise<{ toolResultParts: any[] }> {
  const toolResultParts: any[] = [];

  for (const call of toolCalls) {
    const tool = call.name ? toolsDict[call.name] : undefined;
    if (!tool) {
      console.log(chalk.red(`\nError: Unsupported tool ${call.name}`));
      toolResultParts.push({
        type: "function_result",
        name: call.name,
        call_id: call.id,
        result: { error: `Unsupported tool: ${call.name}` },
      });
      continue;
    }

    console.log(chalk.gray(`\nExecuting ${tool.shortName}...`));
    tool.previewFn(call.arguments);

    let confirmation = "y";
    if (!tool.skipConfirmation) {
      confirmation = await ask(
        `\nExecute this ${tool.shortName} script? (y/n): `,
      );
    }

    if (sayingOk(confirmation)) {
      try {
        const result = await tool.toolFn(call.arguments);
        toolResultParts.push({
          type: "function_result",
          name: call.name,
          call_id: call.id,
          result: result,
        });
        console.log(chalk.gray("Execution finished."));
      } catch (error) {
        const errorMsg = error.stderr || error.message;
        console.log(chalk.red(`\nExecution failed: ${errorMsg}`));
        await recordFailedAttempt.toolFn({
          step: `(Attempting) ${tool.shortName}`,
          toolName: tool.shortName,
          toolArgs: call.arguments,
          error: errorMsg,
        });
        toolResultParts.push({
          type: "function_result",
          name: call.name,
          call_id: call.id,
          result: { error: errorMsg },
        });
      }
    } else {
      console.log(chalk.gray("Execution skipped by user."));
      toolResultParts.push({
        type: "function_result",
        name: call.name,
        call_id: call.id,
        result: { error: "User skipped execution." },
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
    let history: any[] = [];
    let lastInteractionId: string | null = null;

    console.log(chalk.gray(`\nUsing model: ${macrophyllaModel}`));

    while (true) {
      const userInput =
        (await ask("\nWhat's the task: ", true)) || "继续上一个会话的计划";
      if (userInput.toLowerCase() === "exit") {
        console.log(chalk.gray("\nBye!"));
        break;
      }

      let state: AgentState = {
        history: history,
        currentMessageParts: [{ type: "text", text: userInput }],
        lastInteractionId: lastInteractionId,
      };

      // The "Graph" or State Machine Loop
      while (true) {
        const { modelResponseParts, toolCalls, interactionId } =
          await callModel(state);

        lastInteractionId = interactionId;
        state.lastInteractionId = interactionId;

        state.history.push(
          { role: "user", content: state.currentMessageParts },
          { role: "model", content: modelResponseParts },
        );

        if (!toolCalls || toolCalls.length === 0) {
          console.log(chalk.gray("\nTask iteration complete."));
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
