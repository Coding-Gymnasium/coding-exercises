require_relative '../lib/remove_exclamation_marks'

RSpec.describe Remove do
  before :each do 
    @rem = Remove.new
  end

  it 'Removes exclamation mark' do
    expect(@rem.remove_exclamation_marks("Hello World!")).to eq("Hello World")
    expect(@rem.remove_exclamation_marks("Hello World!!!")).to eq("Hello World")
    expect(@rem.remove_exclamation_marks("Hi! Hello!")).to eq("Hi Hello")
    expect(@rem.remove_exclamation_marks("")).to eq("")
    expect(@rem.remove_exclamation_marks("Oh, no!!!")).to eq("Oh, no")
  end

end
