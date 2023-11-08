# frozen_string_literal: true

# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.
class SpaceAge
  def initialize(age)
    @age = age
    @earth = 31_557_600.to_f
  end

  def on_earth
    (@age / @earth).round(2)
  end

  def on_mercury
    mercury = @earth * 0.2408467
    (@age / mercury).round(2)
  end

  def on_venus
    venus = @earth * 0.61519726
    (@age / venus).round(2)
  end

  def on_mars
    mars = @earth * 1.8808158
    (@age / mars).round(2)
  end

  def on_jupiter
    jupiter = @earth * 11.862615
    (@age / jupiter).round(2)
  end

  def on_saturn
    saturn = @earth * 29.447498
    (@age / saturn).round(2)
  end

  def on_uranus
    uranus = @earth * 84.016846
    (@age / uranus).round(2)
  end

  def on_neptune
    neptune = @earth * 164.79132
    (@age / neptune).round(2)
  end
end
