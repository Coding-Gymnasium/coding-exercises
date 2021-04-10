class ReverseWords
  def reverse_words(str)
    narr = str.split(/ /)
    rev_arr = narr.map(&:reverse)
    rev_arr.join(' ')
  end
end

# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"
#
# Some great solutions from codewars:
# def reverse_words(str)
#   str.gsub(/\S+/, &:reverse)
# end
#
# def reverse_words(str)
#    str.split(/(\s+)/).map(&:reverse).join
# end
