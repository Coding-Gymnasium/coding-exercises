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

    raise ArgumentError.new("Number cannot be empty") if @number.empty?
    raise ArgumentError.new("Slice length is too large") if diff < 0
    raise ArgumentError.new("Slice length cannot be negative") if series_length <= 0
    return num_arr if series_length == 1

    [@number] if diff.zero?

    num_arr.each_with_index do |_num, i|
      multi_array.push(num_arr.slice(i, series_length).join("")) unless i > count
    end

    multi_array
  end
end
