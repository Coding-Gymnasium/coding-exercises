require 'pry'
require_relative '../lib/counting_doubles'

RSpec.describe CountingDoubles do
  describe "Counts doubles" do
    it "Counts duplicates once" do
      example  = CountingDoubles.new
     expect(example.duplicate_count('')).to eq(0)
     expect(example.duplicate_count('')).to eq(0)
   end
  end
end


#    Test.assert_equals(duplicate_count("abcde"), 0)
#    Test.assert_equals(duplicate_count("abcdeaa"), 1)
#    Test.assert_equals(duplicate_count("abcdeaB"), 2)
#    Test.assert_equals(duplicate_count("Indivisibilities"), 2)
#    Test.assert_equals(duplicate_count("+ = % ^ 1+2 abcdeaB"), 2)
#    Test.assert_equals(duplicate_count([]), 0)
#    Test.assert_equals(duplicate_count({}), 0)
#    Test.assert_equals(duplicate_count("Indivisibilities are not divisible"), 9)
