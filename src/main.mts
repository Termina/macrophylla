import {
  GoogleGenerativeAI,
  FunctionCallingMode,
  Tool,
  SchemaType,
  ToolConfig,
} from "@google/generative-ai";
import * as readline from "readline";
import path from "path";
import fs from "fs/promises";
import { exec, execFile } from "child_process";
import { promisify } from "util";
import chalk from "chalk";
import stringWidth from "string-width";

// Promisify functions
const execPromise = promisify(exec);
const execFilePromise = promisify(execFile);

// Initialize the Generative AI client
const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY!);
const model = genAI.getGenerativeModel(
  // { model: "gemini-1.5-flash" },
  { model: "gemini-2.0-flash-lite" },
  { baseUrl: "https://sf.chenyong.life" }
);

// Define function to execute Node.js code
const executeNodeJsCode = async (code: string, tempDir: string) => {
  // Create temp directory if it doesn't exist
  try {
    await fs.mkdir(tempDir, { recursive: true });
  } catch (err) {
    // Directory might already exist
  }

  // Create a temporary file with the code
  const tempFilePath = path.join(tempDir, `exec_${Date.now()}.mjs`);
  await fs.writeFile(tempFilePath, code);

  // Execute the file as an ES module
  const result = await execFilePromise("node", [
    "--experimental-modules",
    tempFilePath,
  ]);

  // Clean up the temporary file
  await fs
    .unlink(tempFilePath)
    .catch((err) => console.error("Failed to delete temp file:", err));

  return result;
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
    ],
  },
];

const displayBoxedText = (text: string) => {
  const lines = text.split("\n");
  const maxLength = lines.reduce(
    (max: number, line: string) => Math.max(max, stringWidth(line)),
    0
  );
  const horizontalLine = "┌" + "─".repeat(maxLength + 2) + "┐";
  const verticalLine = "│ ";

  console.log(chalk.gray(horizontalLine));
  lines.forEach((line: string) => {
    const displayLength = stringWidth(line);
    console.log(
      chalk.gray(
        verticalLine + line + " ".repeat(maxLength - displayLength) + " │"
      )
    );
  });
  console.log(chalk.gray("└" + "─".repeat(maxLength + 2) + "┘"));
};

const main = async () => {
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
                "你现在是一个命令行助手, 基于当前进程所在的目录工作. 每次回答都可以考虑调用 executeBashCommand 或者 executeNodeCode 收集更详细的信息来回复" +
                "注意结合上下文来理解意思以便失败的时候重试. 使用中文回复我的指令，代码保留英文。" +
                "另外注意提早获取当前系统的信息, 方便后续的命令执行",
            },
          ],
        },
      ],
    });

    let nextQuestion: string = "";

    outerWhile: while (true) {
      const question =
        nextQuestion || (await ask("\nWhat's the task: ", true)) || "继续";

      if (question.toLowerCase() === "exit") {
        console.log("\nBye!");
        break;
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
        if (functionCall.name === "executeBashCommand") {
          const args: any = functionCall.args;
          const command = args.command;
          // Ask for user confirmation
          console.log(`\nBash command to execute:\n`);

          console.log(`\nBash command to execute:\n`);
          displayBoxedText(command);
          const confirmation = await ask(
            `\nExecute this Bash command? (y/n): `
          );

          if (sayingOk(confirmation)) {
            console.log(`\nExecuting bash command: ${command}`);

            try {
              const { stdout, stderr } = await execPromise(command);
              const result = { stdout, stderr, success: true };
              if (result.success) {
                console.log(result.stdout);
              } else {
                console.log(result.stderr);
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
        } else if (functionCall.name === "executeNodeCode") {
          const args: any = functionCall.args;
          const code = args.code;

          // Ask for user confirmation
          // Display code with syntax highlighting and ask for confirmation
          console.log(chalk.gray("\nNode.js code to execute:"));
          displayBoxedText(code);
          const confirmation = await ask(
            `\nExecute this Node.js code? (y/n): `
          );

          if (sayingOk(confirmation)) {
            console.log(chalk.gray(`\nExecuting Node.js code`));

            try {
              // Execute the code
              const tempDir = path.join(process.cwd(), "./");
              const { stdout, stderr } = await executeNodeJsCode(code, tempDir);

              const output = {
                stdout,
                stderr,
                success: true,
              };
              if (output.success) {
                console.log(output.stdout);
              } else {
                console.log(chalk.red("Execution failed:"), output);
              }

              nextQuestion = JSON.stringify(output);
              continue outerWhile;
            } catch (error) {
              const output = {
                stdout: "",
                stderr: error.message || String(error),
                success: false,
              };
              console.log("\n");
              console.log("Code execution failed:", output);
              nextQuestion = `Node.js 代码执行失败: ${output.stderr}, 你能否改进一下方案?`;
              continue outerWhile;
            }
          } else {
            nextQuestion = `用户拒绝了这段代码: (${confirmation}), 尝试改进一下方案.`;
            continue outerWhile;
          }
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
