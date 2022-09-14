const parse = require("../lib/queryStrings");

describe("happy cases", () => {
  it("?foo=hello&bar=world", () => {
    expect(parse("?foo=hello&bar=world")).toEqual({
      foo: "hello",
      bar: "world",
    });
  });

  it("?foo=hello&bar", () => {
    expect(parse("?foo=hello&bar")).toEqual({
      foo: "hello",
      bar: "true",
    });
  });

  it("?foo=hello&bar=world&bar=again", () => {
    expect(parse("?foo=hello&bar=world&bar=again")).toEqual({
      foo: "hello",
      bar: ["world", "again"],
    });
  });

  it("?abc=a&abc=b&abc=c", () => {
    expect(parse("?abc=a&abc=b&abc=c")).toEqual({
      abc: ["a", "b", "c"],
    });
  });
});

describe("corner cases", () => {
  it("?", () => {
    expect(parse("?")).toEqual({});
  });

  it("?foo=", () => {
    // the empty string is a value, distinct from having no value
    // by omitting the '='
    expect(parse("?foo=")).toEqual({
      foo: "",
    });
  });

  it("?foo&bar&bar=again", () => {
    expect(parse("?foo&bar&bar=again")).toEqual({
      foo: "true",
      bar: ["true", "again"],
    });
  });

  it("?foo&foo&foo=three", () => {
    expect(parse("?foo&foo&foo=three")).toEqual({
      foo: ["true", "true", "three"],
    });
  });
});

describe("extra credit", () => {
  it("?hi%3F=decoded%3F", () => {
    expect(parse("?hi%3F=decoded%3F")).toEqual({
      "hi?": "decoded?",
    });
  });
});
