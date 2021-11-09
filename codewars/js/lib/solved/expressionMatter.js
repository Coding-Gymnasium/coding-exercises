const expressionMatter = (a, b, c) => {
  const results = [a + b + c, a * b * c, a * (b + c), a + b * c, (a + b) * c];
  return Math.max(...results);
};

module.exports = expressionMatter;

/*
 * Pseudo:
 * resuls = [ sum ]
 * using switch/case compare the new calculation with the highest value in results.
 * if larger push it into it.
/*
 * Expressions Matter
 https://www.codewars.com/kata/5ae62fcf252e66d44d00008e/train/javascript
 */
