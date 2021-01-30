# https://leetcode.com/problems/valid-anagram/
# @param {String} s
# @param {String} t
# @return {Boolean}
#
class Anagram

def is_anagram(s, t)
    return false if s.length != t.length
    
    sh = Hash.new(0)
    
    s.chars.each do |ch|
        sh[ch] +=1
    end
    
    t.chars.each do |ch|
       return false unless sh.key? ch
        sh[ch] -= 1
        return false if sh[ch] < 0
    end
    
    return true
end



end
