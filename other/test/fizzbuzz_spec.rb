require_relative '../lib/fizzbuzz'

RSpec.describe FizzBuzz do
  before :each do
    fb = FizzBuzz.new
  end

  it "Can count how many times it appears in pi" do
    
    expect(fb.count_instances(3).to eq('Fizz'))
  end

end



# pi = 3.14159265

# Given a number, count how many times it appears in pi. If it shows up only 1 time, print 'Fizz'. If it shows up 2 times, print 'Buzz'. We would like for you to create test cases and if there's time, you may refactor but it's not required.
