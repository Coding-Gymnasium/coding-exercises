const summation = require('../lib/summation');

describe('summation', function () {
  it('should return the correct total', function () {
    // expect(summation(1)).toBe(1);
    expect(summation(8)).toBe(36);
  });
});
