require_relative '../lib/all_star_22'
require 'pry'

RSpec.describe ToTime do
  before :each do
    @tt = ToTime.new
  end

  it 'It returns a string with hours and minutes from the given seconds integer' do
    expect(@tt.to_time(3600)).to eq('1 hour(s) and 0 minute(s)')
    expect(@tt.to_time(3601)).to eq('1 hour(s) and 0 minute(s)')
    expect(@tt.to_time(3500)).to eq('0 hour(s) and 58 minute(s)')
    expect(@tt.to_time(323_500)).to eq('89 hour(s) and 51 minute(s)')
    expect(@tt.to_time(0)).to eq('0 hour(s) and 0 minute(s)')
  end
end
