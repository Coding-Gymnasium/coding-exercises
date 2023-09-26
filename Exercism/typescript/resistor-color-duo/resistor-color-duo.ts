export function decodedValue(values: string[]): number {
  return +`${colorCode[values[0]]}${colorCode[values[1]]}`;
}

const colorCode: {[key: string]: number} = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9,
};
