import { Type } from "@google/genai";

import { execBash } from "./exec.mjs";
import { displayBoxedText } from "../util.mjs";
import { MacrophyllaTool } from "./type.mjs";

export let bashCommandTool: MacrophyllaTool = {
  shortName: "Bash",
  toolFn: async (args: any) => {
    const command = args.command;
    return await execBash(command);
  },
  previewFn: (args: any) => {
    displayBoxedText(args.command);
  },
  declaration: {
    name: "bash_command",
    description:
      "provide bash command, run in system, and return the output. it can access file system. also called 'bash 脚本'",
    parameters: {
      type: Type.OBJECT,
      properties: {
        command: {
          type: Type.STRING,
          description: "The bash command to execute",
        },
      },
      required: ["command"],
    },
  },
};
