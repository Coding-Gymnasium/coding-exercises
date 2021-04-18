const twiceAsOld = require('../lib/twiceAsOld');

test('It returns how long ago the father was twice older than the son', () => {
    expect(twiceAsOld(36,7)).toBe(22)
    expect(twiceAsOld(55,30)).toBe(5)
    expect(twiceAsOld(42,21)).toBe(0)
    expect(twiceAsOld(22,1)).toBe(20)
    expect(twiceAsOld(29,0)).toBe(29)
});
