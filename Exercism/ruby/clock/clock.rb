# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.
class Clock
  def self.new(args)
    @hour = args[:hour]
    @time = "0#{@hour}:00".to_f
    @time
  end
end
