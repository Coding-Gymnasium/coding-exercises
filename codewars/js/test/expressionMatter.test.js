const expressionMatter = require('../lib/expressionMatter');

describe('Fixed tests', function () {
  it('Small values', function () {
    expect(expressionMatter(2, 1, 2)).toBe(6);
    expect(expressionMatter(2, 1, 1)).toBe(4);
    expect(expressionMatter(1, 1, 1)).toBe(3);
    expect(expressionMatter(1, 2, 3)).toBe(9);
    expect(expressionMatter(1, 3, 1)).toBe(5);
    expect(expressionMatter(2, 2, 2)).toBe(8);
  });

  it('Medium values', function () {
    expect(expressionMatter(5, 1, 3)).toBe(20);
    expect(expressionMatter(3, 5, 7)).toBe(105);
    expect(expressionMatter(5, 6, 1)).toBe(35);
    expect(expressionMatter(1, 6, 1)).toBe(8);
    expect(expressionMatter(2, 6, 1)).toBe(14);
    expect(expressionMatter(6, 7, 1)).toBe(48);
  });

  it('Mixed values', function () {
    expect(expressionMatter(2, 10, 3)).toBe(60);
    expect(expressionMatter(1, 8, 3)).toBe(27);
    expect(expressionMatter(9, 7, 2)).toBe(126);
    expect(expressionMatter(1, 1, 10)).toBe(20);
    expect(expressionMatter(9, 1, 1)).toBe(18);
    expect(expressionMatter(10, 5, 6)).toBe(300);
    expect(expressionMatter(1, 10, 1)).toBe(12);
  });
});
