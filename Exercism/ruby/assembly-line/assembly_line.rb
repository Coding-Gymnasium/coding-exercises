class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case true
    when @speed <= 4
      @speed * 221
    when @speed >= 5 && @speed <= 8
      (@speed * 221) * 0.9
    when @speed == 9
      (@speed * 221) * 0.8
    else
      (@speed * 221) * 0.77
    end
  end

  def working_items_per_minute
    raise 'Please implement the AssemblyLine#working_items_per_minute method'
  end
end
