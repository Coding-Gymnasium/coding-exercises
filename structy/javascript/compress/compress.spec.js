const compress = require("./compress");

describe("It uncompresses string", () => {
  test("Uncompresses string with one type of letter", () => {
    expect(compress("aaa")).toEqual("3a");
  });

  test("Single character string remains the same", () => {
    expect(compress("t")).toEqual("t");
  });

  test("Compresses string with multiple letters and single digits", () => {
    expect(compress("ccaaatsss")).toEqual("2c3at3s");
    expect(compress("ssssbbz")).toEqual("4s2bz");
  });

  test("description", () => {
    expect(compress("nnneeeeeeeeeeeezz")).toEqual("3n12e2z");
    expect(
      compress(
        "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
      )
    ).toEqual("127y");
  });
});
