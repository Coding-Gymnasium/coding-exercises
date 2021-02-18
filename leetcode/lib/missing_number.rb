class MissingNumber
  def missing_number(nums)
    nums.length + 1 == nums.max ? "no missing number" : halves = make_halves(nums.sort)
    binding.pry
  end

  def make_halves(array)
    halves = array.each_slice( (array.size/2.0).round ).to_a
    halves.each do |half|
      half.length > 2 && half.length != half.max && make_halves(half)
      #half.first + 1 if half.first + 1 != half.last
    end
  end
end

# sort the array
# split it in halves until I have one array with just two elements that skip a number.




