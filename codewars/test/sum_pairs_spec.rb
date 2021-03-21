require_relative '../lib/sum_pairs'
require 'pry'

RSpec.describe SumPairs do
  before :each do
    @sp = SumPairs.new
  end

  it 'returns indexes for per adding up to target number' do
    l1 = [1, 4, 8, 7, 3, 15]
    l2 = [1, -2, 3, 0, -6, 1]
    l3 = [20, -13, 40]
    l4 = [1, 2, 3, 4, 1, 0]
    l5 = [10, 5, 2, 3, 7, 5]
    l6 = [4, -2, 3, 3, 4]
    l7 = [0, 2, 0]
    l8 = [5, 9, 13, -3]

    expect(@sp.sum_pairs(l1, 8)).to eq([1, 7])
    expect(@sp.sum_pairs(l2, -6)).to eq([0, -6])
    expect(@sp.sum_pairs(l3, -7)).to eq(nil)
    expect(@sp.sum_pairs(l4, 2)).to eq([1, 1])
    expect(@sp.sum_pairs(l5, 10)).to eq([3, 7])
    expect(@sp.sum_pairs(l6, 8)).to eq([4, 4])
    expect(@sp.sum_pairs(l7, 0)).to eq([0, 0])
    expect(@sp.sum_pairs(l8, 10)).to eq([13, -3])
  end
end
