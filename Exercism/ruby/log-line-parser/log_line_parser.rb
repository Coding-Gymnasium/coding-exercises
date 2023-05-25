class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[-1].strip
  end

  def log_level
    bracket_start = @line.index('[')
    bracket_end = @line.index(']')
    range = bracket_end - bracket_start + 1
    @line.slice(0, range).delete('[]').downcase
  end

  def reformat
    level = log_level.delete('[]')
    "#{message} (#{level})"
  end
end
