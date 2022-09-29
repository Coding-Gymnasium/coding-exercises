//
// This is only a SKELETON file for the 'Luhn' exercise. It's been provided as a
// convenience to get you started writing code faster.

// Conditions
// str length <= 1 is not valid.
// Convert to array and remove empty spaces.
// Convert each element to number
// starting from the back. double every 2nd digit. If the result is greater
// than 9 substract 9 to it.
// Add up all the digits
// check the result is divisible by 10

export const valid = (str) => {
  // convert to array.
  // reverse array
  // filter blank spaces
  let revArr = str
    .split("")
    .reverse()
    .filter((x) => x != " ");

  // check for length less or equal 1
  if (revArr.length <= 1) return false;

  // convert to numbers
  let arrNum = revArr.map(el => +el);

  // double every second digit and adjust if greater than 9
  for (let i = 1; i < arrNum.length; i += 2) {
    let dbl = arrNum[i] * 2;
    dbl > 9 ? (arrNum[i] = dbl - 9) : (arrNum[i] = dbl);
  }

  // add up all digits
  let arrSum = arrNum.reduce((ag, num) => ag + num);

  // is divisible by 10
  return arrSum % 10 === 0;
};
