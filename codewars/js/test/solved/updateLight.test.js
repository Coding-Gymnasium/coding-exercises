const updateLight = require('../lib/updateLight');

test('It takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.', ()  => {
  expect(updateLight('green')).toBe('yellow');
  expect(updateLight('yellow')).toBe('red');
  expect(updateLight('red')).toBe('green');
});

