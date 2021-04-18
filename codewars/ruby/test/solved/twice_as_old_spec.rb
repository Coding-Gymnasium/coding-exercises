require_relative '../lib/twice_as_old'
require 'pry'

RSpec.describe TwiceAsOld do
  before :each do
    @tao = TwiceAsOld.new
  end

  it 'Calculates how many years ago the father was twice as old as his son' do
    expect(@tao.twice_as_old(36, 7)).to eq(22)
    expect(@tao.twice_as_old(55, 30)).to eq(5)
    expect(@tao.twice_as_old(42, 21)).to eq(0)
    expect(@tao.twice_as_old(22, 1)).to eq(20)
    expect(@tao.twice_as_old(29, 0)).to eq(29)
  end
end
