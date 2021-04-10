require_relative '../lib/you_are_a_square'
require 'pry'

RSpec.describe Square do
  before :each do
    @sq = Square.new
  end

  describe 'square?' do
    it 'should work for some examples' do
      expect(@sq.square?(-1)).to eq(false)
      expect(@sq.square?(0)).to eq(true)
      expect(@sq.square?(3)).to eq(false)
      expect(@sq.square?(4)).to eq(true)
      expect(@sq.square?(25)).to eq(true)
      expect(@sq.square?(26)).to eq(false)
    end
  end
end

# https://www.codewars.com/kata/54c27a33fb7da0db0100040e/ruby
