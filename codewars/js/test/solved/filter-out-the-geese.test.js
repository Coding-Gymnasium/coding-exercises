const GooseFilter = require('../lib/filter-out-the-geese');

describe('Basic tests', function () {
  it('Mixed list', function () {
    expect(
      GooseFilter([
        'Mallard',
        'Hook Bill',
        'African',
        'Crested',
        'Pilgrim',
        'Toulouse',
        'Blue Swedish',
      ])
    ).toStrictEqual(['Mallard', 'Hook Bill', 'Crested', 'Blue Swedish']);
  });
  it('No geese', function () {
    expect(
      GooseFilter([
        'Mallard',
        'Barbary',
        'Hook Bill',
        'Blue Swedish',
        'Crested',
      ])
    ).toStrictEqual([
      'Mallard',
      'Barbary',
      'Hook Bill',
      'Blue Swedish',
      'Crested',
    ]);
  });
  it('All geese', function () {
    expect(
      GooseFilter([
        'African',
        'Roman Tufted',
        'Toulouse',
        'Pilgrim',
        'Steinbacher',
      ])
    ).toStrictEqual([]);
  });
});
