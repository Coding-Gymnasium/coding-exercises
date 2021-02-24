class EnoughIsEnough

  def delete_nth(arr, number)
    new_arr = []
    arr.each { |num| new_arr.push(num) if new_arr.count(num) < number }
    new_arr
  end

end
