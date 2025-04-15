import chalk from "chalk";
import { ChildProcess } from "child_process";

let nodeFileToClear: string | null = null;
let runningChildProcess: ChildProcess | null = null;

export const setRunningChildProcess = (child: ChildProcess | null) => {
  runningChildProcess = child;
};

export const setNodeFileToClear = (filePath: string | null) => {
  nodeFileToClear = filePath;
};

export const handleChildSIGINT = () => {
  // Clean up the temporary file if it exists
  if (runningChildProcess != null) {
    runningChildProcess.kill("SIGINT"); // Kill the child process
    runningChildProcess = null; // Clear the reference to the child process
    setNodeFileToClear(null); // Clear the reference to the node file
    console.log(chalk.gray("\nKilled child process"));
    return true;
  } else {
    return false;
  }
};
