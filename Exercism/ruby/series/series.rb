# frozen_string_literal: true

# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

class Series
  def initialize(number)
    @number = number
  end

  def slices(series_length)
    num_arr = @number.chars
    diff = num_arr.length - series_length
    multi_array = []
    count = diff

    check_arguments(@number, series_length, diff)

    return num_arr if series_length == 1

    [@number] if diff.zero?

    num_arr.each_with_index do |_num, i|
      multi_array.push(num_arr.slice(i, series_length).join("")) unless i > count
    end

    multi_array
  end

  private

  def check_arguments(number, length, diff)
    raise ArgumentError, "Number cannot be empty" if number.empty?
    raise ArgumentError, "Slice length is too large" if diff.negative?
    raise ArgumentError, "Slice length cannot be negative" if length <= 0
  end
end
