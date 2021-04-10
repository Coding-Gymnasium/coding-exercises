require_relative '../lib/title_case'
require 'pry'

RSpec.describe TitleCase do
  before :each do
    @tc = TitleCase.new
  end

  it 'Returns a string in Capitalized title case' do
    expect(@tc.title_case('')).to eq('')
    expect(@tc.title_case('a clash of KINGS', 'a an the of')).to eq('A Clash of Kings')
    expect(@tc.title_case('THE WIND IN THE WILLOWS', 'The In')).to eq('The Wind in the Willows')
    expect(@tc.title_case('the quick brown fox')).to eq('The Quick Brown Fox')
    expect(@tc.title_case('First a of in', 'an often into')).to eq('First A Of In')
  end
end
