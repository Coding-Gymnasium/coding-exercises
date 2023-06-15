const uncompress = require("./uncompress");

describe("uncompress()", () => {
  test("Works with single digits", () => {
    expect(uncompress("2c3a1t")).toEqual("ccaaat");
    expect(uncompress("4s2b")).toEqual("ssssbb");
    expect(uncompress("2p1o5p")).toEqual("ppoppppp");
  });

  test("Works with double digits", () => {
    expect(uncompress("3n12e2z")).toEqual("nnneeeeeeeeeeeezz");
  });

  test("another name given", () => {
    expect(uncompress("127y")).toEqual(
      "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
    );
  });
});
