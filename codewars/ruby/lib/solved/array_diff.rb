class ArrayDiff
  def array_diff(a,b)
    diff = []
    a.each do |element|
      diff.push(element) unless b.include?(element)
    end
    diff
  end
end

# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

# It should remove all values from list a, which are present in list b.
# 
# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:
# 
# array_diff([1,2],[1]) == [2]
#
# https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby
