const uniqueInOrder = require('../lib/uniqueInOrder');

describe('It returns a list of items without any elements with the same value next to each other and preserving the original order of elements', () => {
  it('removes contiguous duplicates only', () => {
    expect(uniqueInOrder('AAAABBBCCDAABBB')).toBe([
      'A',
      'B',
      'C',
      'D',
      'A',
      'B',
    ]);
  });

  xit('is case sensitive', () => {
    expect(uniqueInOrder('ABBCcAD')).toBe(['A', 'B', 'C', 'c', 'A', 'D']);
  });

  xit('works with numbers', () => {
    expect(uniqueInOrder('1,2,2,3,3')).toBe(['1', '2', '3']);
  });
});
