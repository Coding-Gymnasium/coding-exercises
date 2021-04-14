require_relative '../lib/two_sum'
require 'pry'

RSpec.describe TwoSum do

  before :each do
    @ts = TwoSum.new
  end

  it "takes an array of numbers (integers) and a target number and find items in the array that, when added together, give the target value and exposes their index in a new array." do
    expect(@ts.two_sum([1, 2, 3], 4).sort).to eq([0, 2])
    expect(@ts.two_sum([1234, 5678, 9012], 14690).sort).to eq([1, 2])
    expect(@ts.two_sum([2, 2, 3], 4).sort).to eq([0, 1])
  end
end

#Test.assert_equals(two_sum([1, 2, 3], 4).sort, [0, 2])
#Test.assert_equals(two_sum([1234, 5678, 9012], 14690).sort, [1, 2])
#Test.assert_equals(two_sum([2, 2, 3], 4).sort, [0, 1])
