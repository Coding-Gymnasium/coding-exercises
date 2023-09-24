# frozen_string_literal: true

# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.
class Matrix
  def initialize(matrix)
    @matrix = []
    create_matrix("1 2\n3 4")
  end

  private

  def create_matrix(matrix)
    char_arr = matrix.gsub(/ /, '').chars
    print char_arr
  end
end
