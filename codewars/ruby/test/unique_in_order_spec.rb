require_relative '../lib/unique_in_order'
require 'pry'

RSpec.describe Unique do
  before :each do
    @unique = Unique.new
    @string = 'AAAABBBCCDAABBB'
    @string1 = 'ABBCcAD'
    @string2 = [1,2,2,3,3]
  end

  it '' do
    expect(@unique.unique_in_order(@string)).to eq(['A', 'B', 'C', 'D', 'A', 'B'])
    expect(@unique.unique_in_order(@string1)).to eq(['A', 'B', 'C', 'c', 'A', 'D'])
    expect(@unique.unique_in_order(@string2)).to eq([1,2,3])
  end
end
