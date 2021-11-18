const descendingOrder = require('../lib/descending-order');

describe('descendingOrder function', () => {
  it('returns the given number with the digits in reversed order', () => {
    expect(descendingOrder(0)).toBe(0);
    expect(descendingOrder(1)).toBe(1);
    expect(descendingOrder(111)).toBe(111);
    expect(descendingOrder(15)).toBe(51);
    expect(descendingOrder(1021)).toBe(2110);
    expect(descendingOrder(123456789)).toBe(987654321);
  });
});
