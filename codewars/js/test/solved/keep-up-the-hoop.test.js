const hoopCount = require('../lib/keep-up-the-hoop');

describe('Delivers the appropriate message for the count', () => {
  it('Delivers an encouraging message if the count is below 10', () => {
    expect(hoopCount(3)).toStrictEqual('Keep at it until you get it');
  });

  it('Delivers a congratulatory message if the count is 10 or more', () => {
    expect(hoopCount(11)).toStrictEqual('Great, now move on to tricks');
  });
});
