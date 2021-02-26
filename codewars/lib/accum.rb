class Accum

  def accum(s)
    str_ch = s.downcase.chars
    h = {}
    str_ch.each_with_index { |e, i| h[i] = e }
    strgs_arr = h.map { |k, v| v * (k + 1) }
    strgs_arr.map(&:capitalize).join('-')
  end

end

# chars the string
# iterate over the array and map a new array for each element that has the letter as many times as the index + 1
# join the array
# Capitalize the first letter
# join all the arrays into one string separated by a '-' with no space in between
#
# Solution 1. has the problem that when there are multiple letters of the same type it uses the index for the first one for all of the instances of it.
    #str_ch = s.downcase.chars
    #strgs_arr = str_ch.map { |letter| letter * (str_ch.index(letter) + 1) }
    #strgs_arr.map(&:capitalize).join('-')
#
# Solution 2. Create a hash where the key is the index and the value the element. 
# Then iterate over to make the new array.
# str_ch.each_with_index { |e, i| h[i] = e }
