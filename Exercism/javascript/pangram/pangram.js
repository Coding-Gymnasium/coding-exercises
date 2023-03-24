//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isPangram = (str) => {
  // make lower case
  const strLow = str.toLowerCase();
  // remove numbers
  const noNumbers = strLow.replace(/\d+/g, "");
  // remove underscores
  const noSymbolsOrPunctuation = noNumbers.replace(
    /[.,\/#!$%'"\^&\*;:{}=\s\-_`~()]/g, "");
  // remove spaces
  const noSpaces = noSymbolsOrPunctuation.replace(/\s/g, "");

  // Make array with just one instance of each character
  const strArr = noSpaces.split("");
  const uniqueChar = Array.from(new Set(strArr));

  return str.length > 0 && uniqueChar.length === 26;
};
