import stringWidth from "string-width";
import chalk from "chalk";

export const displayBoxedText = (text: string) => {
  const lines = text.split("\n");
  const maxLength = lines.reduce(
    (max: number, line: string) => Math.max(max, stringWidth(line)),
    0
  );
  const horizontalLine = "┌" + "─".repeat(maxLength + 2) + "┐";
  const verticalLine = "│ ";

  console.log(chalk.gray(horizontalLine));
  lines.forEach((line: string) => {
    const displayLength = stringWidth(line);
    console.log(
      chalk.gray(
        verticalLine + line + " ".repeat(maxLength - displayLength) + " │"
      )
    );
  });
  console.log(chalk.gray("└" + "─".repeat(maxLength + 2) + "┘"));
};

/** Format an object into a thin string representation */
export const formatThinObject = (obj: any): string => {
  if (obj === null || obj === undefined) {
    return undefined as any;
  }
  if (typeof obj !== "object") {
    return `${obj}`;
  }

  return Object.entries(obj)
    .filter(([key, value]) => value != null)
    .map(
      ([key, value]) =>
        `---- ${key} ----\n${formatThinObject(value) || "(empty)"}\n`
    )
    .join("\n");
};
