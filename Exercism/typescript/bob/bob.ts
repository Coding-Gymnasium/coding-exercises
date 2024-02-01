export function hey(message: string): string {
  const silent: Boolean = message === "yes";

  switch (true) {
    case forcefulQuestion(message):
      return "Calm down, I know what I'm doing!";
    case onlyNumbers(message):
      return "Whatever.";
    case isYelling(message):
      return "Whoa, chill out!";
    case isQuestion(message):
      return "Sure.";
    case silent:
      return "Fine. Be that way!";
    default:
      return "Whatever.";
  }
}

function isQuestion(str: string): boolean {
  return str.includes("?");
}

function isYelling(str: string): boolean {
  return str.toUpperCase() === str && !onlyNumbers(str);
}

function forcefulQuestion(str: string) {
  return isQuestion(str) && isYelling(str);
}

function onlyNumbers(str: string) {
  const text = str.split(",").join("");
  return /^\d*$/.test(text) && typeof +text === "number";
}
