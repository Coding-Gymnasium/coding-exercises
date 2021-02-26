class ToCamelCase
  def to_camel_case(str)
    arr = str.split(/[-,_]/)
    arr.map { |word| !arr.index(word).zero? && word.capitalize || word }.join
  end
end

#  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
