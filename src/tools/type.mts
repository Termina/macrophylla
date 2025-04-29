import { FunctionDeclaration } from "@google/genai";

export type MacrophyllaTool = {
  shortName: string;
  toolFn: (args: any) => Promise<any>;
  previewFn: (args: any) => void;
  declaration: FunctionDeclaration;
  skipConfirmation?: boolean;
};
