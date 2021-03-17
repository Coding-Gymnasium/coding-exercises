require_relative '../lib/gimme'

RSpec.describe Gimme do
  before :each do
    @gm = Gimme.new
  end

  it 'Returns the number in the  middle' do
    expect(@gm.gimme([2, 3, 1])).to eq(0)
    expect(@gm.gimme([5, 10, 14])).to eq(1)
    expect(@gm.gimme([1, 3, 4])).to eq(1)
    expect(@gm.gimme([15, 10, 14])).to eq(2)
    expect(@gm.gimme([-0.410, -23, 4])).to eq(0)
    expect(@gm.gimme([-15, -10, 14])).to eq(1)
  end
end
