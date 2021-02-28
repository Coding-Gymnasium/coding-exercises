class CountingDoubles
    def duplicate_count(text)
      if text.class == String
        text.gsub!(/[^0-9A-Za-z]/, '')
        text_split = text.chars
        extract_duplicates(text_split)
      elsif text.class == Integer
        text.to_s
        text.gsub!(/[^0-9A-Za-z]/, '')
        text_split = text.chars
        extract_duplicates(text_split)
      else
        return 0
      end
    end

    def extract_duplicates(arr)
       count = 0
       down_cased = arr.map {|x| x.downcase}
       down_cased.each do |x|
         if down_cased.count(x) > 1
           count += 1
           down_cased.delete(x)
         end
       end
        count
    end
end
