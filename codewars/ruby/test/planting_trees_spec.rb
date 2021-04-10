require_relative '../lib/planting_trees'
require 'pry'

RSpec.describe PlantingTrees do
  before :each do
    @pt = PlantingTrees.new
  end

  it 'Returns total number of trees that can be planted' do
    expect(@pt.sc(3,3,1)).to eq(4)
    expect(@pt.sc(3,3,3)).to eq(2)
    expect(@pt.sc(3,3,2)).to eq(0)
    expect(@pt.sc(7,7,3)).to eq(6)
    expect(@pt.sc(3,3,0)).to eq(8)
    expect(@pt.sc(3,3,10)).to eq(0)
    expect(@pt.sc(2,2,1)).to eq(2)
    expect(@pt.sc(2,2,0)).to eq(4)
    expect(@pt.sc(200,2,1)).to eq(200)
    expect(@pt.sc(2,200,1)).to eq(200)
  end
end
