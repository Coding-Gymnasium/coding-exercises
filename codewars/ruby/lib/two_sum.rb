class TwoSum
  def two_sum(numbers, target)
    result = []
    numbers.find do |element|
      substraction = target - element
      if numbers.include?(substraction) 
        result.push(numbers.index(substraction)) 
        numbers.each_with_index { |num, ind| result.push(numbers.index(ind)) if num == element }
      end
    end
    result
  end
end

# Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).