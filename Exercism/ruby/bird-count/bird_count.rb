# frozen_string_literal: true

# BirdCount class
class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @this_week = birds_per_day
  end

  def yesterday
    @this_week[-2]
  end

  def total
    raise 'Please implement the BirdCount#total method'
  end

  def busy_days
    raise 'Please implement the BirdCount#busy_days method'
  end

  def day_without_birds?
    raise 'Please implement the BirdCount#day_without_birds method'
  end
end
