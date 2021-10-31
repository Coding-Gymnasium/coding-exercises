const uniqueInOrder = require('../lib/uniqueInOrder');

test('It returns a list of items without any elements with the same value next to each other and preserving the original order of elements', () => {
  // expect(uniqueInOrder('AAAABBBCCDAABBB')).toBe(['A', 'B', 'C', 'D', 'A', 'B'])
  // expect(uniqueInOrder('ABBCcAD')).toBe(['A', 'B', 'C', 'c', 'A', 'D'])
  // expect(uniqueInOrder('1,2,2,3,3')).toBe(['1', '2', '3'])
});
