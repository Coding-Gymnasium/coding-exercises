class TwoSum
  # this solution works very slowly
  def two_sum(nums, target)
    nums.each_with_index do |n, i|
      nums.each_with_index do |n1, i1|
        while i != i1
          if n + n1 == target
            return [i, i1]
          end
          break
        end
      end 
    end  
  end

  #def two_sum(nums, target)
  # #iterate over nums to compare the element to each of the other ones but itself.
  #  h = {}
  #  nums.each do |e|
  #    h[e] = nums.rindex(e)
  #    nums.each_with_index { |n, i| h.key(h[e]) + n == target && h[e] != i && h[n] = i }
  #  end
  #  h.values
  #end
end
