//
// This is only a SKELETON file for the 'Armstrong Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isArmstrongNumber = (number) => {
  const numStrArr = number.toString().split("");

  if (numStrArr.length === 1) return true;

  const numArr = numStrArr.map((item) => {
    return Math.pow(Number(item), numStrArr.length);
  });
  const sum = numArr.reduce((a, b) => a + b, 0);
  return number === sum;
};
