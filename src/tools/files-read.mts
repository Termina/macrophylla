import fs from "node:fs/promises";
import { Type } from "@google/genai";
import path from "path";

import { displayBoxedText } from "../util.mjs";
import { MacrophyllaTool } from "./type.mjs";

export let filesReadTool: MacrophyllaTool = {
  shortName: "read multiple paths",
  previewFn: (args: any) => {
    displayBoxedText(`Reading file ${args.paths.join(", ")}`);
  },
  declaration: {
    name: "read_paths",
    description:
      "read multiple paths into utf8, path relative to the current working directory or absolute path.",
    parameters: {
      type: Type.OBJECT,
      properties: {
        paths: {
          type: Type.ARRAY,
          description: "an array of paths to read",
          items: {
            type: Type.STRING,
            description:
              "the path to read, relative to the current working directory, or absolute path",
          },
        },
      },
    },
  },
  toolFn: async (args: any) => {
    let paths = args.paths as Array<string>;
    let results = await Promise.allSettled(
      paths.map(async (entry) => {
        const filepath = entry as string;
        const filePath = filepath.startsWith("/")
          ? filepath
          : path.join("./", filepath);
        console.log(`Reading file ${filePath}`);
        const data = await fs.readFile(filePath, "utf8");
        return { path: entry, content: data };
      })
    );

    return {
      stdout: results.map((result) => {
        if (result.status === "fulfilled") {
          return result.value;
        } else {
          return `Error reading file: ${result.reason}`;
        }
      }),
      stderr: "",
      success: results.every((result) => result.status === "fulfilled"),
    };
  },
};
