# frozen_string_literal: true

# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.
class Matrix
  def initialize(matrix)
    @matrix = []
    create_matrix(matrix)
  end

  def row(number)
    @matrix[number - 1]
  end

  private

  def create_matrix(matrix)
    char_arr = matrix.delete(' ').chars

    # one row
    int_arr = char_arr.map(&:to_i) unless char_arr.include?("\n")
    @matrix.push(int_arr)

    # multiple rows
    # iterate over array.
    # gather numbers that come before "\n" already converted to int into an array.
    # push that array into a temp array.
    # push last group that come after "\n" to temp array too.
    # push temp array to @matrix
  end
end
