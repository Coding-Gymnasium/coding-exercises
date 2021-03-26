class OlympicRings
  def olympic_ring(string)
    rings = {"a" => 1, "b" => 1, "d" => 1, "e" => 1, "g" => 1, "o" => 1, "p" => 1, "q" => 1, "A" => 1, "B" => 2, "D" => 1, "O" => 1, "P" => 1, "Q" => 1, "R" => 1}
    count = 0
    string.chars.each { |x| rings.include?(x) && count += rings[x] }
    score = count / 2
    if score <= 1 
       'Not even a medal!'
    elsif score == 2 
       'Bronze!'
    elsif score == 3
       'Silver!' 
    elsif score > 3
       'Gold!'  
    end
  end
end

# count as rings: "a", "b", "d", "e", "g" "o", "p", "q", "A", "B", "D", "O", "P", "Q", "R"
#---------------------------
# Given a string of random letters, you need to examine each. Some letters naturally have 'rings' in them. 'O' is an obvious example, but 'b', 'p', 'e', 'A', etc are all just as applicable. 'B' even has two!! Please note for this kata you can count lower case 'g' as only one ring.

# Your job is to count the 'rings' in each letter and divide the total number by 2. Round the answer down. Once you have your final score:

# if score is 1 or less, return 'Not even a medal!'; if score is 2, return 'Bronze!'; if score is 3, return 'Silver!'; if score is more than 3, return 'Gold!';
# 
# Dots over i's and any other letters don't count as rings.
#
# A better solution:
# def olympic_ring(string)
#  case (string.count("abdegopqADOPQR") + string.count("B")*2).fdiv(2).floor
#  when 0..1
#    "Not even a medal!"
#  when 2
#    "Bronze!"
#  when 3
#    "Silver!"
#  else
#    "Gold!"
#  end
#end
