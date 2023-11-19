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
    # compare the num_arr length to the series length and substract the difference
    # If it's equal return the original in an array.
    num_arr = @number.chars
    return num_arr if series_length == 1

    # If there is a difference push into an array the slice matching the series_length number. Then move to the next index up and repeat until for the number of times that equals the difference.
    diff = num_arr.length - series_length
    puts "Diff: #{diff}"
    puts "Sliced:  #{@number.slice(0, series_length)}"
    [@number] if diff.zero?
  end
end
