require_relative '../lib/array_diff'
require 'pry'

RSpec.describe ArrayDiff do
  before :each do
    @ad = ArrayDiff.new
  end

  it 'Returns an array with the numbers that are only in the first array and not in the second' do
    expect(@ad.array_diff([1, 2], [1])).to eq([2])
    expect(@ad.array_diff([1, 2, 2], [1])).to eq([2, 2])
    expect(@ad.array_diff([1, 2, 2], [2])).to eq([1])
    expect(@ad.array_diff([1, 2, 2], [])).to eq([1, 2, 2])
    expect(@ad.array_diff([], [1, 2])).to eq([])
  end
end

