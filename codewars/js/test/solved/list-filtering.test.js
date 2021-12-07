const filterList = require('../lib/list-filtering');

describe('filter-list tests', () => {
  it('separates integers from strings and returns a new array', () => {
    expect(filterList([1, 2, 'a', 'b'])).toStrictEqual([1, 2]);
    expect(filterList([1, 'a', 'b', 0, 15])).toStrictEqual([
      1,
      0,
      15,
    ]);
    expect(
      filterList([1, 2, 'aasf', '1', '123', 123]),
    ).toStrictEqual([1, 2, 123]);
  });
});
