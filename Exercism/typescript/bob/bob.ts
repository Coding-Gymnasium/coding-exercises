export function hey(text: string): string {
  const message = text.trim().replace(/\s+/g, "");

  if (silent(message)) return "Fine. Be that way!";

  switch (true) {
    case forcefulQuestion(message):
      return "Calm down, I know what I'm doing!";
    case onlyNumbers(message):
      return "Whatever.";
    case isYelling(message):
      return "Whoa, chill out!";
    case isQuestion(message):
      return "Sure.";
    default:
      return "Whatever.";
  }
}

function isQuestion(str: string): boolean {
  return str.endsWith("?");
}

function isYelling(str: string): boolean {
  return str.toUpperCase() === str && !onlyNumbers(str.slice(0, -1));
}

function forcefulQuestion(str: string): boolean {
  return isQuestion(str) && isYelling(str.slice(0, -1));
}

function onlyNumbers(str: string): boolean {
  const text = str.split(",").join("");
  const trimmed = text.replace(/ /g, "");
  return /^\d*$/.test(trimmed) && typeof +trimmed === "number";
}

function silent(str: string): boolean {
  const onlyBreaks = str.replace(/[\/t\/r\/n]/g, "");
  return str.trim().length === 0 || onlyBreaks.length === 0;
}
