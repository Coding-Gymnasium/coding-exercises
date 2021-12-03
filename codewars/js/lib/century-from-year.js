const century = year => {
  let arr = year.toString().split('').slice(0, 4);
  const centArr = [];

  if (arr.length === 3 && arr.at(-1) === '0' && arr.at(-2) === '0') {
    centArr.push(arr[0]);
    return Number(centArr.join(''));
  } else if (arr.length === 3) {
    centArr.push(arr[0]);
    return Number(centArr.join('')) + 1;
  } else if (
    arr.length === 4 &&
    arr.at(-1) === '0' &&
    arr.at(-2) === '0'
  ) {
    centArr.push(arr[0]);
    centArr.push(arr[1]);
    return Number(centArr.join(''));
  } else if (arr.length === 4) {
    centArr.push(arr[0]);
    centArr.push(arr[1]);
    return Number(centArr.join('')) + 1;
  } else {
    return 1;
  }
};

module.exports = century;

/**
 * https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/javascript
 */

/*
 * Alernative solution. The one above didn't work in Codewars
 */
/*
const century = year => {
let arr = year.toString().split('');
const centArr = [];

if (arr.length === 3 && arr[arr.length - 1] === '0' && arr[arr.length - 2] === '0') {
  centArr.push(arr[0]);
  return Number(centArr.join(''));
} else if (arr.length === 3) {
  centArr.push(arr[0]);
  return Number(centArr.join('')) + 1;
} else if (
  arr.length === 4 &&
  arr[arr.length - 1] === '0' &&
  arr[arr.length - 2] === '0'
) {
  centArr.push(arr[0]);
  centArr.push(arr[1]);
  return Number(centArr.join(''));
} else if (arr.length === 4) {
  centArr.push(arr[0]);
  centArr.push(arr[1]);
  return Number(centArr.join('')) + 1;
} else {
  return 1;
}
  */
