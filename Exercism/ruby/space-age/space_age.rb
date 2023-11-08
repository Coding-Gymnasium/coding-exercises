# frozen_string_literal: true

# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.
class SpaceAge
  def initialize(age)
    @age = age
  end

  def on_earth
    (@age / 31_557_600.to_f).round(2)
  end
end
