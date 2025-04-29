import path from "path";
import chalk from "chalk";
import fs from "node:fs/promises";
import { Type } from "@google/genai";

import { displayBoxedText } from "../util.mjs";
import { MacrophyllaTool } from "./type.mjs";

export let filesReadTool: MacrophyllaTool = {
  shortName: "batch create/save files",
  previewFn: (args: any) => {
    let entries = args.entries as Array<{
      code: string;
      filepath: string;
    }>;
    let previews = entries
      .map((entry) => {
        return `File: ${chalk.yellow(entry.filepath)}\n-------------\nCode:\n${
          entry.code
        }`;
      })
      .join("\n--------------\n");
    displayBoxedText(previews);
  },
  toolFn: async (args: any) => {
    let entries = args.entries as Array<{
      code: string;
      filepath: string;
    }>;
    let results = await Promise.allSettled(
      entries.map(async (entry) => {
        const code = entry.code;
        const filepath = entry.filepath as string;

        const filePath = filepath.startsWith("/")
          ? filepath
          : path.join("./", filepath);

        // Ensure the directory exists
        const dirPath = path.dirname(filePath);
        await fs.mkdir(dirPath, { recursive: true });
        // The recursive option means it won't error if directory already exists
        console.log(chalk.gray(`Ensured directory exists: ${dirPath}`));

        console.log(`created ${filePath}`);
        await fs.writeFile(filePath, code);
        return `Created ${filePath}.`;
      })
    );
    return {
      stdout: results
        .map((result) => {
          if (result.status === "fulfilled") {
            return result.value;
          } else {
            return `Error saving file: ${result.reason}`;
          }
        })
        .join("\n"),
      stderr: "",
      success: results.every((result) => result.status === "fulfilled"),
    };
  },
  declaration: {
    name: "createMultipleFiles",
    description:
      "create multiple files called entries, on the current working directory",
    parameters: {
      type: Type.OBJECT,
      properties: {
        entries: {
          description: "an array of entries to create",
          type: Type.ARRAY,
          items: {
            type: Type.OBJECT,
            properties: {
              code: {
                type: Type.STRING,
                description: "any code that you want to save to file",
              },
              filepath: {
                type: Type.STRING,
                description:
                  "the path to save the file, relative to the current working directory",
              },
            },
            required: ["code", "filepath"],
          },
        },
      },
    },
  },
};
