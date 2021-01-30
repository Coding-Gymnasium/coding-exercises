gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../monday_exercise'

class MondayExerciseTest < Minitest::Test
  def test_length_is_not_odd
     m = MondayExercise.new
     refute m.is_valid('(((')
  end

  def test_parents_left_are_even
    #skip
    m = MondayExercise.new
    refute m.is_valid('(((')
    assert m.is_valid('()()')
  end

end
