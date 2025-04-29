import path from "path";
import { Type } from "@google/genai";

import { executeNodeJsCode } from "./exec.mjs";
import { MacrophyllaTool } from "./type.mjs";
import { displayBoxedText } from "../util.mjs";

export let nodejsScriptTool: MacrophyllaTool = {
  toolFn: async (args: any) => {
    const code = args.code;
    const tempDir = path.join(process.cwd(), "./");
    return await executeNodeJsCode(code, tempDir);
  },
  shortName: "Node.js",
  previewFn: (args: any) => {
    displayBoxedText(args.code);
  },
  declaration: {
    name: "executeNodeCode",
    description:
      "provide node.js script in ES Module syntax. Execute in system and return the output. it can access the file system. also called 'node.js 脚本'",
    parameters: {
      type: Type.OBJECT,
      properties: {
        code: {
          type: Type.STRING,
          description:
            "The Node.js code to execute. Must use ES module syntax. Write self-contained code that doesn't depend on external files.",
        },
      },
      required: ["code"],
    },
  },
};
