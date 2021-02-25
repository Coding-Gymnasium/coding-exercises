class Square
  def square?(num)
    num.positive? && (Math.sqrt(num) % 1).zero? || num.zero?
  end
end
