import { Type } from "@google/genai";
import { MacrophyllaTool } from "./type.mjs";
import * as path from "path";

export let changeDirTool: MacrophyllaTool = {
  shortName: "current directory",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Current directory: ${args.path}`);
  },
  declaration: {
    name: "change_directory",
    description:
      "change the current working directory. it can access the file system. also called '更改当前目录'",
    parameters: {
      type: Type.OBJECT,
      properties: {
        path: {
          type: Type.STRING,
          description: "The current working directory to change.",
        },
      },
    },
  },
  toolFn: async (args: any) => {
    let p = args.path;
    let fullPath = p.startsWith("/") ? p : path.join(process.cwd(), p);
    process.chdir(fullPath);
    console.log(`Changed directory to: ${fullPath}`);

    return {
      workingDirectory: process.cwd(),
      success: true,
    };
  },
};
