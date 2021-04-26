require_relative '../lib/anagram'
require 'pry'

RSpec.describe Anagram do
  before :each do
    @fwa = Anagram.new
    @input = ['code', 'aaagmnrs', 'anagrams', 'doce']
    @input1 = ['code', 'doce', 'ecod', 'framer', 'frame' ]
    @input2 = ['poke', 'pkoe', 'okpe', 'ekop']
  end
  it 'Returns an array with only the first occurence of an anagram or words that have no anagrams. Ascending order' do
    expect(@fwa.funWithAnagrams(@input)).to eq(['aaagmnrs', 'code'])
    expect(@fwa.funWithAnagrams(@input1)).to eq(['code', 'frame', 'framer'])
    #expect(@fwa.funWithAnagrams(@input2)).to eq(['poke'])
  end
end
