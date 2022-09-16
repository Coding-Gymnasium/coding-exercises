const hw = require('../lib/helloWorld');

describe("returns 'hello world!'", () => {
  it('returns hellow world to the console', async () => {
    expect(hw('Hello World!')).toBe('Hello World!')
  })
})
