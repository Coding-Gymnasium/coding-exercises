class DrinkAbout
  def people_with_age_drink(old)
    if old < 14 && old >= 0
      'drink toddy'
    elsif old < 18 && old >= 14
      'drink coke'
    elsif old < 21 && old >= 18
      'drink beer'
    else
      'drink whisky'
    end
  end
end

# Make a function that receive age, and return what they drink.
# Rules:
# Children under 14 old.
# Teens under 18 old.
# Young under 21 old.
# Adults have 21 or more.
#
# # Kids drink toddy.
# Teens drink coke.
# Young adults drink beer.
# Adults drink whisky.

# Examples: (Input --> Output)
# 13 --> "drink toddy"
# 17 --> "drink coke"
# 18 --> "drink beer"
# 20 --> "drink beer"
# 30 --> "drink whisky"
# https://www.codewars.com/kata/56170e844da7c6f647000063/train/ruby
