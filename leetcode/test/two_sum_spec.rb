require 'pry'
require_relative '../lib/two_sum'

RSpec.describe TwoSum do
  describe "Test method two_sum(nums, target) works" do
    it "Returns two indexes which added up match the value of the target" do
      ts = TwoSum.new
      expect(ts.two_sum([2,7,11,15], 9)).to eq([0, 1])
      expect(ts.two_sum([9,7,11,15], 20)).to eq([0, 2])
    end
  end
end


# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# 
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# 
# You can return the answer in any order.
# 
# 
# 
# Example 1:
# 
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:
# 
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:
# 
# Input: nums = [3,3], target = 6
# Output: [0,1]
# 
