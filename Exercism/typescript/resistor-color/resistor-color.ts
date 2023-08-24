export const colorCode = (color: string): number => {
  const capitalizedName: string = capitalize(color);
  return colorCodes[capitalizedName];
};

function capitalize(name: string): string {
  const firstLetter: string = name.charAt(0);
  const firstLetterCap: string = firstLetter.toUpperCase();
  const remainingLetters: string = name.slice(1);

  return `${firstLetterCap}${remainingLetters}`;
}

const colorCodes: any = {
  Black: 0,
  Brown: 1,
  Red: 2,
  Orange: 3,
  Yellow: 4,
  Green: 5,
  Blue: 6,
  Violet: 7,
  Grey: 8,
  White: 9,
};
export const COLORS: string[] = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
];
