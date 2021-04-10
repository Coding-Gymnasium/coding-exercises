const makeUpperCase = require('../lib/makeUpperCase');

test('It converts the input string to uppercase.', () => {
  expect(makeUpperCase('hello')).toBe('HELLO');
});

