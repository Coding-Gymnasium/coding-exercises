# @param {String} s
# @return {Boolean}
# The input is either (), [], or {}
# Check for pairs to be in the right order. i.e. () = true, (( = false, (} = false.
# They could be nested. ie. {[]} = true. {[} = false
## ------------------------------------------

class MondayExercise

   @parents = ["(", ")"]
   @brackets = ["[", "]"]
   @curlies = ["{", "}"]

    def is_valid(s)
      # is the number or brackets[0] % 2 == 0 || is the number or brackets[1] % 2 == 0
      return false if s.length.odd?
      
      partners = {
          '('=> ')',
          '['=> ']',
          '{'=> '}'
      }

      stack = []
      s.each do |ch|
        if partners[ch]
          stack << ch
        elsif partners.value? ch
          last_char = stack.pop
          if ch != partners[last_char]
            return false
          end
        end
      end
      stack.empty?
   end
end
# not working
