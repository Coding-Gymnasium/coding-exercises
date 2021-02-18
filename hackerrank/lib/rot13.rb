class Rot13
  def initialize
    @dictionary = {}
    set_dictionary
    require 'pry'; binding.pry

  end
  
  def set_dictionary
    alph = Array('a'..'z')
    r13_alph = alph.rotate(13)
    alph.each { |letter| @dictionary[letter] = r13_alph[alph.index(letter)] }
  end
  
  def rot13(secret_messages)
  end

  def english(secret_messages)
  end

end

