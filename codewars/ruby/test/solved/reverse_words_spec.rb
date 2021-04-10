require_relative '../lib/reverse_words'
require 'pry'

RSpec.describe ReverseWords do
  before :each do
    @rw = ReverseWords.new
  end

  it '' do
    expect(@rw.reverse_words('The quick brown fox jumps over the lazy dog.')).to eq('ehT kciuq nworb xof spmuj revo eht yzal .god')
    expect(@rw.reverse_words('apple')).to eq('elppa')
    expect(@rw.reverse_words('a b c d')).to eq('a b c d')
    expect(@rw.reverse_words('double  spaced  words')).to eq('elbuod  decaps  sdrow')
  end
end
