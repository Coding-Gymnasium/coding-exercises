const solution = require('../lib/multiple_of_3_or_5');

test('It returns the sum of all multiples of 3 or 5 within the range between zero and number', () => {
  expect(solution(10)).toBe(23)
  expect(solution(20)).toBe(78)
  expect(solution(200)).toBe(9168)
});
