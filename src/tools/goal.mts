import { Type } from "@google/genai";
import { MacrophyllaTool } from "./type.mjs";

let goal = {
  hasGoal: false,
  goal: "(not defined yet)",
  description: "(not defined yet)",
  workSteps: [] as { done: boolean; step: string }[],
  confirmSteps: [] as { done: boolean; step: string }[],
  failedAttempts: [] as {
    step: string;
    toolName: string;
    toolArgs: any;
    error: string;
  }[],
};

export let getGoal: MacrophyllaTool = {
  shortName: "get goal",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Current goal: ${goal.goal}`);
  },
  declaration: {
    name: "get_goal",
    description: "Get the current goal, work steps, and failed attempts.",
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
        failedAttempts: goal.failedAttempts,
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
    description: "Finish the current goal and clear all states.",
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
    goal.failedAttempts = [];

    return {
      message: "(finished goal, all states have been cleared)",
    };
  },
};

export let recordFailedAttempt: MacrophyllaTool = {
  shortName: "record failed attempt",
  skipConfirmation: true,
  previewFn: (args: any) => {
    console.log(`Recording failed attempt for step: ${args.step}`);
  },
  declaration: {
    name: "record_failed_attempt",
    description: "Record a failed tool execution attempt for learning.",
    parameters: {
      type: Type.OBJECT,
      properties: {
        step: {
          type: Type.STRING,
          description: "The work step that was being attempted.",
        },
        toolName: {
          type: Type.STRING,
          description: "The name of the tool that failed.",
        },
        toolArgs: {
          type: Type.OBJECT,
          description: "The arguments passed to the failed tool.",
        },
        error: {
          type: Type.STRING,
          description: "The error message (stderr) from the tool.",
        },
      },
      required: ["step", "toolName", "toolArgs", "error"],
    },
  },
  toolFn: async (args: any) => {
    goal.failedAttempts.push({
      step: args.step,
      toolName: args.toolName,
      toolArgs: args.toolArgs,
      error: args.error,
    });
    return {
      status: "failed attempt recorded",
      failedAttempts: goal.failedAttempts,
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
      required: ["step", "status"],
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
      "Remember the goal and work steps. This should be the first step.",
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
      required: ["goal", "description", "workSteps"],
    },
  },
  toolFn: async (args: any) => {
    goal.hasGoal = true;
    goal.goal = args.goal || goal.goal;
    goal.description = args.description || goal.description;
    goal.workSteps = args.workSteps || goal.workSteps;
    goal.confirmSteps = args.confirmSteps || goal.confirmSteps;
    goal.failedAttempts = []; // Clear previous failures when a new goal is set

    return {
      goal: goal.goal,
      progress: goal.workSteps.map((step) => step.done),
      confirmSteps: goal.confirmSteps.map((step) => step.done),
    };
  },
};
