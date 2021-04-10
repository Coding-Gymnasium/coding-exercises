require_relative '../lib/directions_reduction'
require 'pry'

RSpec.describe DirectionsReduction do
  before :each do
    @dr = DirectionsReduction.new
    @u=["NORTH", "WEST", "SOUTH", "EAST"]
    @a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
  end

  it 'Can remove redundant directions' do
    expect(@dr.dirReduc(@a)).to eq(["WEST"])
    expect(@dr.dirReduc(@u)).to eq(["NORTH", "WEST", "SOUTH", "EAST"])
  end
end
