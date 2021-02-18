require_relative '../lib/missing_number'
require 'pry'

RSpec.describe MissingNumber do
  before :each do
    @mnum = MissingNumber.new
  end
  it "Returns the missing number" do
    num = [1,2,3]
    expect(@mnum.missing_number(num)).to eq('no missing number')
  end

  it "" do
    nums = [3,0,1]
    expect(@mnum.missing_number(nums)).to eq(2)
  end

  it "" do
    nums1 = [0,1]
    expect(@mnum.missing_number(nums1)).to eq(2)
  end

  it "" do
    nums2 = [9,6,4,2,3,5,7,0,1]
    expect(@mnum.missing_number(nums2)).to eq(8)
  end

end
#https://leetcode.com/problems/missing-number/
