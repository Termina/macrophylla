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

// Promisify functions
const execPromise = promisify(exec);
const execFilePromise = promisify(execFile);

// Initialize the Generative AI client
const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY!);
const model = genAI.getGenerativeModel(
  // { model: "gemini-1.5-flash" },
  { model: "gemini-2.0-flash" },
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

const ask = (question: string) => {
  return new Promise<string>((resolve) => {
    rl.question(chalk.cyan(question), (answer) => {
      resolve(answer);
    });
  });
};

const sayingOk = (message: string) => {
  return message === "ok" || message === "yes" || message === "y";
};

const main = async () => {
  try {
    // Create a chat session
    // Define a function declaration tool
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
                    "The Node.js code to execute. Must use ES module syntax (e.g., 'import fs from \"fs/promises\"' instead of 'const fs = require(\"fs\")'). Write self-contained code that doesn't depend on external files.",
                },
              },
              required: ["code"],
            },
          },
        ],
      },
    ];

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
              text: "每次回答都可以先考虑是否调用 executeBashCommand 或者 executeNodeCode 这些工具函数然后再回复, 注意结合上下文.  请尽可能使用中文回复我的问题，但是代码保留英文。",
            },
          ],
        },
      ],
    });

    while (true) {
      const question = await ask("\nWhat's the task: ");

      if (question.toLowerCase() === "exit") {
        console.log("Bye!");
        break;
      }

      console.log("\nResponse:");
      // Use the chat API to send messages and get streaming responses
      const response = await chat.sendMessage(question);
      const textResponse = response.response.text();
      if (textResponse) {
        process.stdout.write(textResponse);
      }

      // Handle function calls if any
      const functionCalls = response.response.functionCalls();
      if (functionCalls && functionCalls.length > 0) {
        for (const functionCall of functionCalls) {
          if (functionCall.name === "executeBashCommand") {
            const args: any = functionCall.args;
            const command = args.command;
            // Ask for user confirmation
            console.log(`\nBash command to execute:`);
            console.log(chalk.yellow(command));
            const confirmation = await ask(
              `\nExecute this Bash command? (y/n):`
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

                // Send the result back to the model
                const functionResponse = await chat.sendMessage(
                  JSON.stringify(result)
                );
                console.log("\n");
                process.stdout.write(functionResponse.response.text());
              } catch (error) {
                const result = {
                  stdout: error.stdout || "",
                  stderr: error.stderr || error.message,
                  success: false,
                };

                const functionResponse = await chat.sendMessage(
                  JSON.stringify(result)
                );
                console.log("\n");
                console.log("Command failed:", result);
                console.log("\nFunction response:");
                process.stdout.write(functionResponse.response.text());
              }
            } else {
              const result = {
                stdout: "",
                stderr: "User declined to execute the command",
                success: false,
              };

              const functionResponse = await chat.sendMessage(
                JSON.stringify(result)
              );
              console.log("\nUser declined to execute the command");
            }
          } else if (functionCall.name === "executeNodeCode") {
            const args: any = functionCall.args;
            const code = args.code;

            // Ask for user confirmation
            // Display code with syntax highlighting and ask for confirmation
            console.log("\nNode.js code to execute:");
            console.log(chalk.yellow(code));
            const confirmation = await ask(
              `\nExecute this Node.js code? (y/n): `
            );

            if (sayingOk(confirmation)) {
              console.log(`\nExecuting Node.js code`);

              try {
                // Execute the code
                const tempDir = path.join(process.cwd(), "./");
                const { stdout, stderr } = await executeNodeJsCode(
                  code,
                  tempDir
                );

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

                // Send the result back to the model using streaming
                const functionResponse = await chat.sendMessageStream(
                  JSON.stringify(output)
                );
                console.log("\n");
                for await (const chunk of functionResponse.stream) {
                  process.stdout.write(chunk.text());
                }
              } catch (error) {
                const output = {
                  stdout: "",
                  stderr: error.message || String(error),
                  success: false,
                };

                const functionResponse = await chat.sendMessage(
                  JSON.stringify(output)
                );
                console.log("Code execution failed:", output);
                console.log("\n");
                process.stdout.write(functionResponse.response.text());
              }
            } else {
              const result = {
                stdout: "",
                stderr: "User declined to execute the code",
                success: false,
              };

              const functionResponse = await chat.sendMessageStream(
                JSON.stringify(result)
              );
              for await (const chunk of functionResponse.stream) {
                process.stdout.write(chunk.text());
              }
              console.log("\nUser declined to execute the code");
            }
          }
        }
      }

      console.log("\n");
    }
  } catch (err) {
    console.error("发生错误:", err);
    rl.close();
    process.exit(1);
  } finally {
    rl.close();
  }
};
main();
