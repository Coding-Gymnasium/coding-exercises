function solution(number) {
  let numbers = [];
  for (const x of Array(number).keys()) { (x % 3 === 0 && numbers.push(x)) || (x % 5 === 0 && numbers.push(x))}
  return numbers.reduce((a, b) => a + b, 0)
}
module.exports = solution;

