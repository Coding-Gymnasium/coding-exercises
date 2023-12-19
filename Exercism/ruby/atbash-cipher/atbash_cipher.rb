# frozen_string_literal: true

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
      cyphertext.push(PLAIN[character.to_sym]) if /[a-z]/.match?(character)
      cyphertext.push(character) if /[0-9]/.match?(character)
    end
    parse_cypher(cyphertext)
  end

  def self.decode(cyphertext)
    encoded = cyphertext.gsub(/\s+/, "").chars
    encoded.map do |e|
      if /[a-z]/.match?(e)
        PLAIN[e.to_sym]
      else
        e
      end
    end.join("")
  end

  def self.parse_cypher(arr)
    if arr.length > 5
      group_in_fives(arr)
    else
      arr.join("").strip
    end
  end

  def self.group_in_fives(arr)
    new_arr = []
    count = 1
    arr.each do |el|
      case count
      when 5
        new_arr.push("#{el} ") && count = 0
      else
        new_arr.push(el)
      end
      count += 1
    end
    new_arr.join("").strip
  end
end
