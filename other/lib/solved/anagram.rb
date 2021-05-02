class Anagram
  def funWithAnagrams(text)
    new_list = []
    counter = 0
    text.group_by(&:length).each_value do |v|
      new_list.push(v[0]) if v.length == 1
      until counter >= v.length - 1
        str1 = v[counter].chars.sort
        str2 = v[counter + 1].chars.sort
        str1 == str2 && v.delete_at(counter + 1) && (!new_list.include?(v[counter]) && new_list.push(v[counter]))
      end
    end
    new_list.sort
  end
end

