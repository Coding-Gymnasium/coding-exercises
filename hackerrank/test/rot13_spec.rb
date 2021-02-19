require_relative '../lib/rot13'
require 'pry'

RSpec.describe Rot13 do
  before :each do
    @rot = Rot13.new
  end

  it "translates secrete code from english to Rot13 and viceversa" do

    secret_message = ['Why did the chicken cross the road?', 'Gb trg gb gur bgure fvqr!']
    expect(@rot.rot13(secret_message)).to eq(['Jul qvq gur puvpxra pebff gur ebnq?', 'To get to the other side!'])
  end

end
