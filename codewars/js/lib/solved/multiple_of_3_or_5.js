function solution(number) {
  let numbers = [];
  if(number < 0) {
    return 0;
  } else {
    for (const x of Array(number).keys()) { (x % 3 === 0 && numbers.push(x)) || (x % 5 === 0 && numbers.push(x))}
    return numbers.reduce((a, b) => a + b, 0)
  }
}
module.exports = solution;

// https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby
