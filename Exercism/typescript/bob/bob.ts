export function hey(message: string): string {
  const silent: Boolean = message === "yes";

  switch (true) {
    case forcefulQuestion(message):
      return "Calm down, I know what I'm doing!";
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
  return str.toUpperCase() === str;
}

function forcefulQuestion(str: string) {
  return isQuestion(str) && isYelling(str);
}
