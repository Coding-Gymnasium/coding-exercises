const uniqueInOrder = (iterable) => {
  newArr = [];
  const arr = iterable.split('');

  arr.map((ch, i) => {
    while (arr.length != i + 1) {
      arr[i + 1] === ch && newArr.push(ch) && arr.unshift;
      break;
    }
  });

  console.log(newArr);
};

module.exports = uniqueInOrder;
/**
 * PSEUDO CODE:
 *
 * iterate over array.
 * if first one push to new array without checking
 * if second one compare to previous one and push to array only if different
 * keep the process until original array's length is reached
 */

// iterable can be a string or an array
// Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

// For example:
//
// uniqueInOrder('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
// uniqueInOrder('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
// uniqueInOrder([1,2,2,3,3])       == [1,2,3]
// https://www.codewars.com/kata/54e6533c92449cc251001667/train/javascript
