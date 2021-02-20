class Square

  def is_square(x)
   x > 0 && Math.sqrt(x) % 1 == 0 || x == 0
  end
end
