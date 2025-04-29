import { GoogleGenAI, Type } from "@google/genai";
import chalk from "chalk";

import { displayBoxedText } from "../util.mjs";
import { MacrophyllaTool } from "./type.mjs";

// Initialize the Generative AI client
const genAi = new GoogleGenAI({ apiKey: process.env.GEMINI_API_KEY! });
const geminiBaseUrl = process.env.GEMINI_BASE_URL;

export let googleSearchTool: MacrophyllaTool = {
  shortName: "Ground Search",
  previewFn: (args: any) => {
    displayBoxedText(`Searching the web for ${args.query}`);
  },
  toolFn: async (args: any) => {
    const query = args.query as string;
    console.log(`Searching the web for ${query}`);

    try {
      const response = await genAi.models.generateContent({
        model: "gemini-2.5-flash-preview-04-17",
        contents: [query],
        config: {
          tools: [{ googleSearch: {} }],
          httpOptions: {
            baseUrl: geminiBaseUrl,
          },
        },
      });
      let result = response.text;
      console.log(chalk.gray(result));
      // To get grounding metadata as web content.
      // response?.candidates?.[0].groundingMetadata?.searchEntryPoint
      //   ?.renderedContent;
      if (result) {
        return {
          stdout: result,
          stderr: "",
          success: true,
        };
      } else {
        return {
          stdout: "",
          stderr: "No result found.",
          success: false,
        };
      }
    } catch (err) {
      console.error("Error:", err);
      return {
        stdout: "",
        stderr: `Error searching the web: ${err.message}`,
        success: false,
      };
    }
  },
  declaration: {
    name: "groundSearch",
    description:
      "search the web for the latest information, with gemini groundSearch",
    parameters: {
      type: Type.OBJECT,
      properties: {
        query: {
          type: Type.STRING,
          description: "The search query",
        },
      },
      required: ["query"],
    },
  },
};
