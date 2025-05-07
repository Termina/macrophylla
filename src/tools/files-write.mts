import fs from "node:fs/promises";
import { Type } from "@google/genai";
import path from "path";

import { displayBoxedText } from "../util.mjs";
import { MacrophyllaTool } from "./type.mjs";

export let filesReadTool: MacrophyllaTool = {
  shortName: "read multiple files",
  previewFn: (args: any) => {
    displayBoxedText(`Reading file ${args.entries.join(", ")}`);
  },
  declaration: {
    name: "read_files",
    description:
      "read multiple files in utf8. it can access the file system. also called '读取文本文件'",
    parameters: {
      type: Type.OBJECT,
      properties: {
        entries: {
          type: Type.ARRAY,
          description: "an array of entries to read",
          items: {
            type: Type.STRING,
            description:
              "the path to read, relative to the current working directory",
          },
        },
      },
    },
  },
  toolFn: async (args: any) => {
    let entries = args.entries as Array<string>;
    let results = await Promise.allSettled(
      entries.map(async (entry) => {
        const filepath = entry as string;
        const filePath = filepath.startsWith("/")
          ? filepath
          : path.join("./", filepath);
        console.log(`Reading file ${filePath}`);
        const data = await fs.readFile(filePath, "utf8");
        return data;
      })
    );

    return {
      stdout: JSON.stringify(results),
      stderr: "",
      success: results.every((result) => result.status === "fulfilled"),
    };
  },
};
