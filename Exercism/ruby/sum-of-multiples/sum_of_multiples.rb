# frozen_string_literal: true

# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.
class SumOfMultiples
  def initialize(*magical)
    @magical = [*magical]
    @multiples = []
  end

  def to(base_num)
    return 0 if base_num == 1

    @magical.each do |num|
      @multiples.push(*find_multiples(num, base_num))
    end
    @multiples.reduce(0) { |sum, num| sum + num }
  end

  def find_multiples(num, base_num)
    num_arr = (1..base_num).to_a
    num_arr.find_all { |n| (n % num).zero? }
  end
end
