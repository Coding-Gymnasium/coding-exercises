const list = require('../lib/list-of-names');

it('It joins names into one string separated by commas but the last word with an ampersand', () => {
  expect(
    list([
      { name: 'Bart' },
      { name: 'Lisa' },
      { name: 'Maggie' },
      { name: 'Homer' },
      { name: 'Marge' },
    ]),
  ).toBe('Bart, Lisa, Maggie, Homer & Marge');
  expect(
    list([{ name: 'Bart' }, { name: 'Lisa' }, { name: 'Maggie' }]),
  ).toBe('Bart, Lisa & Maggie');
  expect(list([{ name: 'Bart' }, { name: 'Lisa' }])).toBe(
    'Bart & Lisa',
  );
  expect(list([{ name: 'Bart' }])).toBe('Bart');
  expect(list([])).toBe('');
});
