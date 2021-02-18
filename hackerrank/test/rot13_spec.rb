require_relative '../lib/rot13'

RSpec.describe Rot13 do
  before :each do
    @rot = Rot13.new
  end

  it "translates from english to Rot13" do
    secret_message = 'Why did the chicken cross the road?'
    expect(@rot.rot13(secret_message)).to eq('Jul qvq gur puvpxra pebff gur ebnq?')
  end

  it "translates from rot13 to english" do
    secret_message = 'Gb trg gb gur bgure fvqr!'
    expect(@rot.english(secret_message)).to eq('To get to the other side!')
  end

end
