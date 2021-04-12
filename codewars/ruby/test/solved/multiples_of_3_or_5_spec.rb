require_relative '../lib/multiple_of_3_or_5'
require 'pry'

RSpec.describe Multiple do
  before :each do
    @m35 = Multiple.new
  end

  it 'Returns the sum of all multiples of 3 or 5 within the provided range' do
    expect(@m35.solution(10)).to eq(23)
    expect(@m35.solution(20)).to eq(78)
    expect(@m35.solution(200)).to eq(9168)
  end
end
