import { Type } from "@google/genai";
import { MacrophyllaTool } from "./type.mjs";
import { exec } from "child_process";
import { promisify } from "util";

export let currentDirTool: MacrophyllaTool = {
  shortName: "current directory",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Current directory: ${args.path}`);
  },
  declaration: {
    name: "current_dir",
    description:
      "get the current working directory. it can access the file system. also called '当前目录'",
    parameters: {
      type: Type.OBJECT,
      properties: {},
    },
  },
  toolFn: async (args: any) => {
    const execAsync = promisify(exec);

    const { stdout } = await execAsync(
      'find . -maxdepth 2 ! -path "./node_modules/*" ! -path "./.git/*" -print'
    );

    return {
      workingDirectory: process.cwd(),
      stdout,
      stderr: "",
      success: true,
    };
  },
};
