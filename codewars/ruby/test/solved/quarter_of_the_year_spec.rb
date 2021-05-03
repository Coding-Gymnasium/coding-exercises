require_relative '../lib/quarter_of_the_year'
require 'pry'

RSpec.describe Quarter do
  before :each do
    @qoy = Quarter.new
  end

  it 'Returns the corresponding quarter of the year for the month given' do
    expect(@qoy.quarter_of(3)).to eq(1)
    expect(@qoy.quarter_of(5)).to eq(2)
    expect(@qoy.quarter_of(7)).to eq(3)
  end
end
