# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.
class Acronym
  def self.abbreviate(text)
    text_arr = text.split(" ")
    abbrev = []
    text_arr.map { |x| abbrev.push(x.slice(0).upcase) }

    abbrev.join("")
  end
end
