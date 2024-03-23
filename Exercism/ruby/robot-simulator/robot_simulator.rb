# Write your code for the 'Robot Simulator' exercise in this file. Make the tests in
# `robot_simulator_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/robot-simulator` directory.

class Robot
  attr_reader :bearing, :coordinates

  DIRECTION = %i[east west north south].freeze

  def orient(direction)
    raise ArgumentError, "Wrong type of argument" unless DIRECTION.include?(direction)

    @bearing = direction
  end

  def turn_right
    case @bearing
    when :north
      @bearing = :east
    when :east
      @bearing = :south
    when :south
      @bearing = :west
    when :west
      @bearing = :north
    end
  end

  def turn_left
    case @bearing
    when :north
      @bearing = :west
    when :east
      @bearing = :north
    when :south
      @bearing = :east
    when :west
      @bearing = :south
    end
  end

  def at(north, east)
    @coordinates = [north, east]
  end
end
