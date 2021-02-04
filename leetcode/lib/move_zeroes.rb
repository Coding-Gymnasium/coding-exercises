class MoveZeroes

#def move_zeroes(nums)
#  reordered = []
#  zeroes = []
#  nums.each do |n|
#    n == 0 ? zeroes.push(n) : reordered.push(n)
#  end
#  reordered.push(zeroes).flatten
#end

  def move_zeroes(nums)
    counter = 0
      nums.delete_if do |num|
          counter += 1 if num == 0
          num == 0
      end
      counter.times { nums.append(0) }
      nums
  end
end
