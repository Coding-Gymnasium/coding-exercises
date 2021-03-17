class Gimme
  def gimme(input_array)
    sorted = input_array.sort
    input_array.index(sorted[1])
  end
end
