//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isPangram = (str) => {
  // remove spaces
  const noSpaces = str.replace(/\s/g, "");
  // const trimmedString = str.replaceAll(/\s[a-z]/g, "");

  // Make array with just one instance of each character
  const strArr = noSpaces.split("");
  const uniqueChar = Array.from(new Set(strArr));

  // check for empty string
  // check for perfect lower case
  // check for missing letters

  return str.length > 0 && str === str.toLowerCase() && uniqueChar.length === 26;
};
