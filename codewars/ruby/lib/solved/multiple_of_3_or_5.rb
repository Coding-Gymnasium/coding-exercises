class Multiple
  def solution(number)
    num_range = Array(0..(number -1))
    #mult = num_range.map { |x| x if x % 3 == 0 || x % 5 == 0 }.compact
    mult = num_range.map { |x| x if (x % 3).zero? || (x % 5).zero? }.compact
    mult.sum
  end
end

# https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby
