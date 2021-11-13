const isDividedBy = require('../lib/can-we-divide-it');

describe('Tests', () => {
  it('test', () => {
    expect(isDividedBy(-12, 2, -6)).toBe(true);
    expect(isDividedBy(-12, 2, -5)).toBe(false);
    expect(isDividedBy(45, 1, 6)).toBe(false);
    expect(isDividedBy(45, 5, 15)).toBe(true);
    expect(isDividedBy(4, 1, 4)).toBe(true);
    expect(isDividedBy(15, -5, 3)).toBe(true);
  });
});
