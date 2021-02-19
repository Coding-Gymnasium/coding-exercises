#write a method which takes an array of strings (containing secret enemy message bits!) and decodes its elements using ROT13 cipher system; returning an array containing the final messages.
#

class Rot13
  def rot13(secret_messages)
      dictionary = {}
      alph = Array('a'..'z')
      r13_alph = alph.rotate(13)
      alph.each { |letter| dictionary[letter] = r13_alph[alph.index(letter)] }
    
      brokened_up = secret_messages.map { |string| string.downcase.chars }
      translated =  brokened_up.map do |arr|
      arr.map { |letter| letter == " " || letter =~ /[?.!]/ ? letter : letter = dictionary[letter] }
      end
      translated.map {|arr| arr.join.capitalize }
  end
end

#def rot13(secret_messages)
#    alphabet = Array('a'..'z')
#    secret_messages.map do |str|
#      arr = str.chars
#       translated = arr.map { |letter| letter = alphabet.rotate(13) if alphabet.include?(letter) }
#       translated
#    end
#end

#class Rot13
#  @@dictionary = {}
#
#  def set_dictionary
#    alph = Array('a'..'z')
#    r13_alph = alph.rotate(13)
#    alph.each { |letter| @@dictionary[letter] = r13_alph[alph.index(letter)] }
#  end
#
#  def rot13(secret_messages)
#    set_dictionary
#    brokened_up = secret_messages.map { |string| string.downcase.chars }
#    translated =  brokened_up.map do |arr|
#      arr.map { |letter| letter == " " || letter =~ /[?.!]/ ? letter : letter = @@dictionary[letter] }
#    end
#    translated.map {|arr| arr.join.capitalize }
#  end
#end

