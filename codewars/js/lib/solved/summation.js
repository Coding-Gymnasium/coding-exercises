const summation = num => {
  // arrRange = Array.from({ length: num }, (_, i) => i + 1);
  // return arrRange.reduce(
  //   (previousValue, currentValue) => previousValue + currentValue,
  //   0,
  // );
  result = 0;
  for (let i = 0; i <= num; i++) {
    result += i;
  }
  return result;
};

module.exports = summation;
