# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.
class Clock
  MINUTES_PER_DAY = 60 * 24

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def total_minutes
    ((@hour * 60) + @minute) % MINUTES_PER_DAY
  end

  def hour
    total_minutes.div(60)
  end

  def minutes
    total_minutes % 60
  end

  def to_s
    format("%<hour>.2d:%<minute>.2d", hour: hour, minute: minutes)
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minutes + other.minutes)
  end
end
