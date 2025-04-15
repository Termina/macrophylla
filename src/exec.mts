import { exec, spawn } from "child_process";
import path from "path";
import fs from "fs/promises";
import { setNodeFileToClear, setRunningChildProcess } from "./task-state.mjs";

export type CommandResult = {
  stdout: string;
  stderr: string;
  code: number | null;
  signal: NodeJS.Signals | null;
};

// Define function to execute Node.js code
export const executeNodeJsCode = async (
  code: string,
  tempDir: string
): Promise<{
  stdout: string;
  stderr: string;
}> => {
  // Create temp directory if it doesn't exist
  try {
    await fs.mkdir(tempDir, { recursive: true });
  } catch (err) {
    // Directory might already exist
  }

  // Create a temporary file with the code
  const tempFilePath = path.join(tempDir, `exec_${Date.now()}.mjs`);
  await fs.writeFile(tempFilePath, code);
  setNodeFileToClear(tempFilePath);
  // Execute the file as an ES module
  const child = spawn("node", ["--experimental-modules", tempFilePath], {
    stdio: "pipe",
    shell: true, // Use shell to execute the command
    cwd: process.cwd(), // Set the current working directory
  });
  setRunningChildProcess(child);

  let stdout = "";
  let stderr = "";

  // Stream stdout in real-time while preserving color
  child.stdout?.on("data", (data) => {
    process.stdout.write(data);
    stdout += data;
  });

  // Stream stderr in real-time while preserving color
  child.stderr?.on("data", (data) => {
    process.stderr.write(data);
    stderr += data;
  });

  // Wait for process to complete
  const result = await new Promise<CommandResult>((resolve, reject) => {
    child.on("exit", (code, signal) => {
      setRunningChildProcess(null);
      // Clean up the temporary file, asynchronously
      fs.unlink(tempFilePath).catch((err) =>
        console.error("Failed to delete temp file:", err)
      );
      setNodeFileToClear(null);

      if (code === 0 || code === null) {
        resolve({ stdout, stderr, code, signal });
      } else {
        reject(new Error(`Process exited with code ${code}\n${stderr}`));
      }
    });

    child.on("error", reject);
  });

  return result;
};

export let execBash = async (command: string): Promise<CommandResult> => {
  // Execute the command
  const child = exec(command, {
    encoding: "utf8",
    maxBuffer: 10 * 1024 * 1024, // 10MB buffer to handle large outputs
  });
  setRunningChildProcess(child);

  let stdout = "";
  let stderr = "";

  // Stream stdout in real-time while preserving colors
  child.stdout?.on("data", (data) => {
    process.stdout.write(data);
    stdout += data;
  });

  // Stream stderr in real-time while preserving colors
  child.stderr?.on("data", (data) => {
    process.stderr.write(data);
    stderr += data;
  });

  // Wait for process to complete
  return new Promise<CommandResult>((resolve, reject) => {
    child.on("close", (code, signal) => {
      setRunningChildProcess(null);
      if (code === 0 || code === null) {
        resolve({ stdout, stderr, code, signal });
      } else {
        reject(new Error(`Process exited with code ${code}\n${stderr}`));
      }
    });

    child.on("error", reject);
  });
};
