# frozen_string_literal: true

# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.
class Hamming
  def self.compute(strand_one, strand_two)
    strand_one == strand_two ? 0 : 1
  end
end
