# frozen_string_literal: true

require_relative "leap_test"
##
# A leap year (in the Gregorian calendar) occurs:
# In every year that is evenly divisible by 4.
# Unless the year is evenly divisible by 100,
# in which case it's only a leap year if the year is also evenly divisible by 400
##
class Date
  def leap?; end
end

class Year < Date
  def self.leap?(number)
    (number % 400).zero?
    (number % 100).zero? && (number && 400).zero?
    (number % 4).zero? unless (number % 100).zero? && (number % 400) != 0
  end
end
