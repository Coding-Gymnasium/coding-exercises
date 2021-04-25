class Abbreviator

  def abbreviate(string)
    if string.length >= 4 && (string.include?(' ') || string.include?('-'))
      strings = string.split(/[' ']/)
      n_str = strings.map do |str|
        if  str.include?('-')
          str.split('-').map { |strg| Array.new([strg.slice!(0), strg.length - 1, strg.slice!(-1)]).join }.join('-')
        else
          x = str.gsub(/[0-9a-z ]/i, '').prepend('this')
          y = str.gsub(/[^0-9a-z ]/i, '')
          z = y.length >= 4 ? Array.new([y.slice!(0), y.length - 1, y.slice!(-1)]).join : y
          x.sub!('this', z.to_s)
        end
      end
      n_str.length > 1 ? n_str.join(' ') : n_str.join
    else
      string.length >= 4 && Array.new([string.slice!(0), string.length - 1, string.slice!(-1)]).join
    end
  end
end

# https://www.codewars.com/kata/5375f921003bf62192000746/train/ruby
# The word i18n is a common abbreviation of internationalization in the developer community, used instead of typing the whole word and trying to spell it correctly. Similarly, a11y is an abbreviation of accessibility.
#
# Write a function that takes a string and turns any and all "words" (see below) within that string of length 4 or greater into an abbreviation, following these rules:
#
# A "word" is a sequence of alphabetical characters. By this definition, any other character like a space or hyphen (eg. "elephant-ride") will split up a series of letters into two words (eg. "elephant" and "ride").
# The abbreviated version of the word should have the first letter, then the number of removed characters, then the last letter (eg. "elephant ride" => "e6t r2e").
# Example
# abbreviate("elephant-rides are really fun!")
# //          ^^^^^^^^*^^^^^*^^^*^^^^^^*^^^*
# // words (^):   "elephant" "rides" "are" "really" "fun"
# //                123456     123     1     1234     1
# // ignore short words:               X              X
#
# // abbreviate:    "e6t"     "r3s"  "are"  "r4y"   "fun"
# // all non-word characters (*) remain in place
# //                     "-"      " "    " "     " "     "!"
# === "e6t-r3s are r4y fun!"
