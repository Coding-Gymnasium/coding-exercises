# frozen_string_literal: true

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.
class Raindrops
  def self.convert(number)
    case true
    when (number % 3).zero? && (number % 5).zero? && (number % 7).zero?
      'PlingPlangPlong'
    when (number % 3).zero? && (number % 5).zero?
      'PlingPlang'
    when (number % 3).zero? && (number % 7).zero?
      'PlingPlong'
    when (number % 5).zero? && (number % 7).zero?
      'PlangPlong'
    when (number % 3).zero?
      'Pling'
    when (number % 5).zero?
      'Plang'
    when (number % 7).zero?
      'Plong'
    else
      number.to_s
    end
  end
end
