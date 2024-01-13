# frozen_string_literal: true

# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.
class Isogram
  def self.isogram?(input)
    letters = input.downcase.scan(/[a-z]/)
    letters == letters.uniq
  end
end
