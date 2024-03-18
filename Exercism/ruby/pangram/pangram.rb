# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

class Pangram
  def self.pangram?(sentence)
    new_sentence = sentence.downcase.tr("0-9", "")
    dictionary = self.dictionary
    nil if sentence.empty?
    downcase?(new_sentence) && new_sentence.gsub(/[[:space:]_.]/, "").chars.uniq.sort == dictionary
  end

  def self.downcase?(sentence)
    sentence == sentence.downcase
  end

  def self.dictionary
    "abcdefghijklmnopqrstuvwxyz".chars
  end
end
