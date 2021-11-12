const hoopCount = require('../lib/keep-up-the-hoop');

describe('Delivers the appropriate message for the count', () => {
  it('Delivers an encouragin message if the count is low', () => {
    expect(hoopCount(3)).toStrictEqual('Keep at it until you get it');
  });

  it('Delivers a congratulatory message if the count is high', () => {
    expect(hoopCount(11)).toStrictEqual('Great, now move on to tricks');
  });
});
