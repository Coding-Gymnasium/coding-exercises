const isDivisible = require('../lib/isDivisible');

describe('Return a boolean depending on whether it is divisible or not', () => {
  it('Divisible by both x and y', () => {
    expect(isDivisible(3, 3, 4)).toBe(false);
    expect(isDivisible(12, 3, 4)).toBe(true);
    expect(isDivisible(8, 3, 4)).toBe(false);
    expect(isDivisible(48, 3, 4)).toBe(true);
  });
});
