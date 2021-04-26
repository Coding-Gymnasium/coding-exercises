class Anagram

def funWithAnagrams(text)
    new_list = []
    counter = 0
    until counter == (text.length - 1)
        sorted = text.sort_by { |str| str.size}
        str1 = sorted[counter].chars.sort
        str2 = sorted[counter + 1].chars.sort
        new_list.push(sorted[counter])
        str1 == str2 ? counter += 2 : counter += 1
    end
    new_list.sort
end

end
