require_relative '../lib/word_a10n'
require 'pry'

RSpec.describe Abbreviator do
  before :each do
    @abb = Abbreviator.new
  end

  it 'Returns abbreviated string if length >= 4 characters' do
    expect(@abb.abbreviate('banana')).to eq('b4a')
    expect(@abb.abbreviate('double-barrel')).to eq('d4e-b4l')
    # expect(@abb.abbreviate('You, and I, should speak.')).to eq('You, and I, s4d s3k.')
  end
end

