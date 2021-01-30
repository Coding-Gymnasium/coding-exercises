# @param {String} s
# @return {Boolean}
# The input is either (), [], or {}
# Check for pairs to be in the right order. i.e. () = true, (( = false, (} = false.
# They could be nested. ie. {[]} = true. {[} = false
## ------------------------------------------

class MondayExercise

   def is_valid(s)
      return false if s.length.odd?
      strg = s.chars
      partners = {
          '('=> ')',
          '['=> ']',
          '{'=> '}'
      }

      stack = []
      strg.each do |ch|
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

