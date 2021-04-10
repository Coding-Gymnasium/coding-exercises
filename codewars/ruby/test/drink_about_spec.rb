require_relative '../lib/drink_about'
require 'pry'

RSpec.describe DrinkAbout do
  before :each do
    @da = DrinkAbout.new
  end

  it 'It receives age, and return what they drink' do
    expect(@da.people_with_age_drink(22)).to eq('drink whisky')
    expect(@da.people_with_age_drink(21)).to eq('drink whisky')
    expect(@da.people_with_age_drink(20)).to eq('drink beer')
    expect(@da.people_with_age_drink(18)).to eq('drink beer')
    expect(@da.people_with_age_drink(17)).to eq('drink coke')
    expect(@da.people_with_age_drink(15)).to eq('drink coke')
    expect(@da.people_with_age_drink(14)).to eq('drink coke')
    expect(@da.people_with_age_drink(13)).to eq('drink toddy')
    expect(@da.people_with_age_drink(0)).to eq('drink toddy')
  end
end
