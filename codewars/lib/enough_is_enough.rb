class EnoughIsEnough

  def delete_nth(arr, number)
    new_arr = []
    arr.map do |num|
      count = arr.count(num)
      binding.pry
      if count <= number
        count.times {new_arr.push(num)}
      elsif count > number
        (count - number).times {arr.delete(num)}
        num.times {new_arr.push(num)}
      end
    end
  end

end
