require_relative '../lib/rotate_array'

RSpec.describe RotateArray do
  describe "Given an array, rotate the array to the right by k steps, where k is non-negative." do
    it "" do
      rot_arr = RotateArray.new
      nums = [1,2,3,4,5,6,7], k = 3
      expect(rot_arr.rotate(nums, k)).to eq([5,6,7,1,2,3,4])
    end
  end
end

#https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/

