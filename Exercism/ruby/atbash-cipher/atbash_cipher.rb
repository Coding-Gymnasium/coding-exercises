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
    plaintext.downcase.chars.each do |character|
      cyphertext.push(PLAIN[character.to_sym]) if /[A-Za-z]/.match?(character)
      cyphertext.push(character) if /[0-9]/.match?(character)
    end
    parse_cypher(cyphertext)
  end

  def self.parse_cypher(arr)
    new_arr = []
    count = 1
    if arr.length > 5
      arr.each do |el|
        (count == 5) ? new_arr.push("#{el} ") && count = 0 : new_arr.push(el)
        count += 1
      end
      new_arr.join("").strip
    else
      arr.join("").strip
    end
  end
end
