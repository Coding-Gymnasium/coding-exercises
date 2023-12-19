# frozen_string_literal: true

# Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
# `atbash_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/atbash-cipher` directory.
class Atbash
  PLAIN = {
    a: "z", b: "y", c: "x", d: "w", e: "v", f: "u",
    g: "t", h: "s", i: "r", j: "q", k: "p", l: "o",
    m: "n", n: "m", o: "l", p: "k", q: "j", r: "i",
    s: "h", t: "g", u: "f", v: "e", w: "d", x: "c", y: "b", z: "a"
  }.freeze

  def self.encode(plaintext)
    cyphertext = []
    plaintext.downcase.chars.each { |letter| cyphertext.push(PLAIN[letter.to_sym]) if /[ A-Za-z]/.match?(letter) }
    cyphertext.join("")
  end
end
