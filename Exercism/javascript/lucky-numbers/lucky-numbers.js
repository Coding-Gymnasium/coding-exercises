// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */

const concatArray = (arr) => arr.reduce((a, v) => String(a) + String(v));

export function twoSum(array1, array2) {
  let num1 = Number(concatArray(array1));
  let num2 = Number(concatArray(array2));
  return num1 + num2;
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean} whether the number is a palindrome or not
 */

const reverseNumber = (num) => {
  let str = String(num);
  let revString = str.split("").reverse().join("");
  return Number(revString);
};

export function luckyNumber(value) {
  let rev = reverseNumber(value);
  return rev === value;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  if (!input) return "Required field";
  input = Number(input);
  
  console.log(typeof input, typeof input == 'number', input)
  if (input != 0 && !isNaN(input) && typeof input === 'number') {
    return '';
  } else {
    return 'Must be a number besides 0';
  };
}
