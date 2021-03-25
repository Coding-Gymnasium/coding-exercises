require_relative '../lib/olympic_rings'
require 'pry'

RSpec.describe OlympicRings do
  before :each do
    @or = OlympicRings.new
  end

  it 'Returns ring count' do
    expect(@or.olympic_ring('wHjMudLwtoPGocnJ')).to eq('Bronze!')
    expect(@or.olympic_ring('eCEHWEPwwnvzMicyaRjk')).to eq('Bronze!')
    expect(@or.olympic_ring('JKniLfLW')).to eq('Not even a medal!')
    expect(@or.olympic_ring('EWlZlDFsEIBufsalqof')).to eq('Silver!')
    expect(@or.olympic_ring('IMBAWejlGRTDWetPS')).to eq('Gold!')
  end

end
