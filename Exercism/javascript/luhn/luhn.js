//
// This is only a SKELETON file for the 'Luhn' exercise. It's been provided as a
// convenience to get you started writing code faster.

// Conditions
// str length <= 1 is not valid.
// Single 0 is not valid
// Divisble by 10

// Steps
// Convert to array and remove empty spaces.
// Convert each element to number
// starting from the back. double every 2nd digit. If the result is greater
// than 9 substract 9 to it.
// Add up all the digits
// check the result is divisible by 10

const convertToReversedArray = (str) => {
  return str
    .split("")
    .reverse()
    .filter((x) => x != " ");
};

const convertToNumber = (arr) => arr.map((el) => +el);

const doubleEveryOtherAndAdjust = (arrNum) => {
  for (let i = 1; i < arrNum.length; i += 2) {
    let dbl = arrNum[i] * 2;
    dbl > 9 ? (arrNum[i] = dbl - 9) : (arrNum[i] = dbl);
  }
  return arrNum;
};

const totalSum = (arrNum) => arrNum.reduce((ag, num) => ag + num);

export const valid = (str) => {
  let revArr = convertToReversedArray(str);

  // check for length less or equal 1
  if (revArr.length <= 1) return false;

  // convert to numbers
  let arrNum = convertToNumber(revArr);

  // double every second digit and adjust if greater than 9
  doubleEveryOtherAndAdjust(arrNum);

  // add up all digits
  let arrSum = totalSum(arrNum);

  // is divisible by 10
  return arrSum % 10 === 0;
};
