import { Type } from "@google/genai";
import { MacrophyllaTool } from "./type.mjs";
import { exec } from "child_process";
import { promisify } from "util";

let goal = {
  hasGoal: false,
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
    if (goal.hasGoal) {
      return {
        goal: goal.goal,
        description: goal.description,
        workSteps: goal.workSteps,
        confirmSteps: goal.confirmSteps,
      };
    }

    return {
      goal: "任务目标未定义, 提示用户输入新的任务, 或者结束会话",
    };
  },
};

export let finishGoal: MacrophyllaTool = {
  shortName: "finish goal",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Finishing goal: ${args.goal}`);
  },
  declaration: {
    name: "finish_goal",
    description: "Finish the current goal.",
    parameters: {
      type: Type.OBJECT,
      properties: {},
    },
  },
  toolFn: async (args: any) => {
    goal.hasGoal = false;
    goal.goal = "(not defined yet)";
    goal.description = "(not defined yet)";
    goal.workSteps = [];
    goal.confirmSteps = [];

    return {
      message: "(finished goal, now goal is not defined)",
    };
  },
};

export let updateWorkStepStatus: MacrophyllaTool = {
  shortName: "update work step status",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Updating work step status: ${args.step}`);
  },
  declaration: {
    name: "update_work_step_status",
    description: "Update the status of a work step.",
    parameters: {
      type: Type.OBJECT,
      properties: {
        step: {
          type: Type.STRING,
          description: "The work step to update.",
        },
        status: {
          type: Type.BOOLEAN,
          description: "The new status of the work step.",
        },
      },
    },
  },
  toolFn: async (args: any) => {
    const step = goal.workSteps.find((s) => s.step === args.step);
    if (step) {
      step.done = args.status;
    }
    return {
      goal: goal.goal,
      progress: goal.workSteps.map((step) => step.done),
    };
  },
};

export let rememberGoal: MacrophyllaTool = {
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
    goal.hasGoal = true;
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
