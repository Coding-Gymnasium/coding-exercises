# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

class Pangram
  def self.pangram?(sentence)
    nil if sentence.empty?

    new_sentence = cleanup_sentence(sentence)
    dictionary = self.dictionary

    downcase?(new_sentence.join("")) && new_sentence == dictionary
  end

  def self.cleanup_sentence(sentence)
    new_sentence = sentence.downcase.tr("0-9", "")
    new_sentence.gsub(/[[:space:]_."]/, "").chars.uniq.sort
  end

  def self.downcase?(sentence)
    sentence == sentence.downcase
  end

  def self.dictionary
    "abcdefghijklmnopqrstuvwxyz".chars
  end
end
