const century = require('../lib/century-from-year');

describe('Century from a give year', () => {
  it('the correct century number is returned', () => {
    expect(century(1705)).toBe(18);
    expect(century(1900)).toBe(19);
    expect(century(1601)).toBe(17);
    expect(century(2000)).toBe(20);
    expect(century(201)).toBe(3);
    expect(century(89)).toBe(1);
    expect(century(624097)).toBe(6241);
  });
});
