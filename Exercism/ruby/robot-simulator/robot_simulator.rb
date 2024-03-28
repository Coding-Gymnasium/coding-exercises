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

  def at(east, north)
    @coordinates = [east, north]
  end

  def advance
    case @bearing
    when :north
      @coordinates = [@coordinates[0], @coordinates[1] += 1]
    when :east
      @coordinates = [@coordinates[0] += 1, @coordinates[1]]
    when :south
      @coordinates = [@coordinates[0], @coordinates[1] -= 1]
    when :west
      @coordinates = [@coordinates[0] -= 1, @coordinates[1]]
    end
  end
end

class Simulator
  def instructions(direction)
    commands = []
    direction_arr = direction.chars
    direction_arr.each do |character|
      case character
      when "L"
        commands.push(:turn_left)
      when "R"
        commands.push(:turn_right)
      when "A"
        commands.push(:advance)
      end
    end
    commands
  end
end
