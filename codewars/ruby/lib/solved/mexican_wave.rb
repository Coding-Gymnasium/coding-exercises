require 'pry'
class MexicanWave
  def wave(string)
    mx_wave = [] 
    chr_arr = string.chars 
    chr_arr.each_with_index do |e, i|
      i != 0 && chr_arr[i - 1] = chr_arr.fetch(i - 1).downcase
      unless chr_arr[i] == " "
        letter = chr_arr.delete_at(i)
        chr_arr.insert(i, letter.upcase)
        mx_wave.push(chr_arr.join)
      end
    end
    mx_wave
  end
end
