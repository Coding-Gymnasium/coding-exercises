const bmi = require('../lib/calculateBMI');

test('It returns a string with the level of obesity', () => {
  expect(bmi(60, 1.80)).toBe('Normal')
  expect(bmi(80, 1.80)).toBe('Normal')
  expect(bmi(90, 1.80)).toBe('Overweight')
  expect(bmi(100, 1.80)).toBe('Obese')
});

