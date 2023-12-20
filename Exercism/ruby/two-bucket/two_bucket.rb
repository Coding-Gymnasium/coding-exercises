# frozen_string_literal: true

# Two Bucket Class
class TwoBucket
  attr_reader :goal_bucket, :other_bucket

  def initialize(b1s, other_bucket, liters, goal_bucket)
    @b1s = b1s
    @other_bucket = other_bucket
    @liters = liters
    @goal_bucket = goal_bucket
  end

  def moves
    puts "soon"
  end
end
