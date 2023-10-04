# frozen_string_literal: true

# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.
class Hamming
  def self.compute(strand_one, strand_two)
    return 0 if strand_one.empty? && strand_two.empty?

    s_one_arr = strand_one.chars
    s_two_arr = strand_two.chars
    count = 0

    s_one_arr.each_with_index do |letter, i|
      count += 1 unless letter == s_two_arr[i]
    end

    count
  end
end
