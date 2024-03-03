# Write your code for the 'Simple Cipher' exercise in this file. Make the tests in
# `simple_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/simple-cipher` directory.

class Cipher
  def initialize
    @key = { a: "d", b: "e", c: "f", d: "g", e: "h", f: "i", g: "j", j: "m", k: "n", l: "o", m: "p", n: "q", o: "r", p: "s", q: "t", r: "u", s: "v", t: "w", u: "x", w: "z", x: "a", y: "b",
             z: "c" }
  end

  def key
    @key.keys.join("")
  end
end
