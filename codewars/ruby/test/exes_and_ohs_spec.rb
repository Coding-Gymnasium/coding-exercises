require_relative '../lib/exes_and_ohs'
require 'pry'

RSpec.describe ExesAndOhs do
  before :each do
    @xo = ExesAndOhs.new
  end

  it "Can check to see if a string has the same amount of 'x's and 'o's" do
    expect(@xo.XO('xo')).to eq(true)
    expect(@xo.XO('XO')).to eq(true)
    expect(@xo.XO('xo0')).to eq(true)
    expect(@xo.XO('xxxoo')).to eq(false)
    expect(@xo.XO("xxOo")).to eq(true)
  end
end
