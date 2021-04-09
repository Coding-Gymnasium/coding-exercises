require_relative '../lib/max_area'
require 'pry'

RSpec.describe MaxArea do
  before :each do
    @ma = MaxArea.new
  end

  it 'finds the container with most water' do
    expect(@ma.max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])).to eq(49)
    expect(@ma.max_area([1, 1])).to eq(1)
    expect(@ma.max_area([4, 3, 2, 1, 4])).to eq(16)
    expect(@ma.max_area([1, 2, 1])).to eq(2)
  end
end
