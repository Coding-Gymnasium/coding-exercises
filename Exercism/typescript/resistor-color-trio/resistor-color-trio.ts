const colorCode: { [key: string]: number } = {
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

export function decodedResistorValue(values: string[]): string {
  const capitalizedValue: string[] = capitalize(values);

  const valueOne: number = colorCode[capitalizedValue[0]];
  const valueTwo: number = colorCode[capitalizedValue[1]];
  const valueThree: number = colorCode[capitalizedValue[2]];
  let zeros: string = "";

  for (let i = 1; i <= valueThree; i++) {
    zeros = `0${zeros}`;
  }

  return `${valueOne}${valueTwo}${zeros} ohms`;
}

function capitalize(values: string[]): string[] {
  return values.map((v) => {
    const tempArr = v.split("");
    const last = tempArr.slice(1).join("");
    return `${tempArr[0].toUpperCase()}${last}`;
  });
}
