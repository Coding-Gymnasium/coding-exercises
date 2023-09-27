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
    @rows_count = @matrix.length
    @row_length = @matrix[0].length
  end

  def row(number)
    @matrix[number - 1]
  end

  def column(column_number)
    row_index = column_number - 1
    @matrix.map { |arr| arr[row_index] }
  end

  private

  def create_matrix(matrix)
    arr_rows_split_by_break = matrix.split("\n")
    arr_rows_split_by_space = arr_rows_split_by_break.map { |e| e.split(' ') }
    @matrix = arr_rows_split_by_space.map do |e|
      e.map(&:to_i)
    end
  end
end
