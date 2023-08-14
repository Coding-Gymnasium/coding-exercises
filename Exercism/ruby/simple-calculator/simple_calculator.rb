# frozen_string_literal: true

# calculator class
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.instance_of? String
      raise ArgumentError, 'Operand must be an integer'
    elsif second_operand.instance_of? String
      raise ArgumentError, 'Operand must be a interger'
    elsif second_operand.zero?
      'Division by zero is not allowed.'
    elsif !ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation, 'Operation must be valid'
    else
      result = first_operand.public_send operation, second_operand
      "#{first_operand} #{operation} #{second_operand} = #{result}"

    end
  end

  class UnsupportedOperation < StandardError; end
end
