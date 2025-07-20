import { Type } from "@google/genai";
import { MacrophyllaTool } from "./type.mjs";
import { exec } from "child_process";
import { promisify } from "util";

let goal = {
  goal: "(not defined yet)",
  description: "(not defined yet)",
  workSteps: [] as { done: boolean; step: string }[],
  confirmSteps: [] as { done: boolean; step: string }[],
};

export let getGoal: MacrophyllaTool = {
  shortName: "get goal",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Current goal: ${goal.goal}`);
  },
  declaration: {
    name: "get_goal",
    description: "get the current goal and work steps.",
    parameters: {
      type: Type.OBJECT,
      properties: {},
    },
  },
  toolFn: async (args: any) => {
    return {
      goal: goal.goal,
      description: goal.description,
      workSteps: goal.workSteps,
      confirmSteps: goal.confirmSteps,
    };
  },
};

export let goalTool: MacrophyllaTool = {
  shortName: "remember goal",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Remembering goal: ${args.goal}`);
  },
  declaration: {
    name: "remember_goal",
    description:
      "read/write this state. remember the goal of this task, and the work steps to do.",
    parameters: {
      type: Type.OBJECT,
      properties: {
        goal: {
          type: Type.STRING,
          description: "The goal of this task.",
        },
        description: {
          type: Type.STRING,
          description: "A detailed description of the task.",
        },
        workSteps: {
          type: Type.ARRAY,
          items: {
            type: Type.OBJECT,
            properties: {
              done: { type: Type.BOOLEAN, description: "Is this step done?" },
              step: { type: Type.STRING, description: "The work step." },
            },
          },
        },
        confirmSteps: {
          type: Type.ARRAY,
          items: {
            type: Type.OBJECT,
            properties: {
              done: {
                type: Type.BOOLEAN,
                description: "Is this step confirmed?",
              },
              step: {
                type: Type.STRING,
                description: "The confirmation step.",
              },
            },
          },
        },
      },
    },
  },
  toolFn: async (args: any) => {
    goal.goal = args.goal || goal.goal;
    goal.description = args.description || goal.description;
    goal.workSteps = args.workSteps || goal.workSteps;
    goal.confirmSteps = args.confirmSteps || goal.confirmSteps;

    return {
      goal: goal.goal,
      progress: goal.workSteps.map((step) => step.done),
      confirmSteps: goal.confirmSteps.map((step) => step.done),
    };
  },
};
