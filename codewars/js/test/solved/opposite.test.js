const opposite = require('../lib/opposite-number');

describe('Converts the given number to its opposite', () => {
  it('converts from positive to negative', () => {
    expect(opposite(1)).toBe(-1);
  });

  it('converts from negative to positive', () => {
    expect(opposite(-1)).toBe(1);
  });
});
