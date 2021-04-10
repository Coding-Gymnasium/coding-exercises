require_relative '../lib/find_the_stray_number'
require 'pry'

RSpec.describe FindTheStrayNumber do
  before :each do
    @sn = FindTheStrayNumber.new
  end

  it 'Can find the straight number' do
    expect(@sn.stray([1, 1, 2])).to eq(2)
  end
end

