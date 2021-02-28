class FindTheStrayNumber
  def stray(numbers)
    length = numbers.length
    numbers.find do |num|
      numbers.count(num) != length - 1
    end
  end
end

# https://www.codewars.com/kata/57f609022f4d534f05000024/train/ruby
#You are given an odd-length array of integers, in which all of them are the same, except for one single number.

#Complete the method which accepts such an array, and returns that single different number.

#The input array will always be valid! (odd-length >= 3)
