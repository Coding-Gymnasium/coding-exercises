const zeroFuel = require('../lib/willYouMakeIt');

test('It returns true if there is enough fuel or false if there is not', () => {
  expect(zeroFuel(50, 25, 2)).toBe(true);
  expect(zeroFuel(100, 50, 1)).toBe(false);
  expect(zeroFuel(60, 30, 3)).toBe(true);
  expect(zeroFuel(70, 25, 1)).toBe(false);
  expect(zeroFuel(100, 25, 3)).toBe(false);
});
