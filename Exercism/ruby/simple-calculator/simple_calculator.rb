# frozen_string_literal: true

# calculator class
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    case second_operand
    when 0
      return 'Division by zero is not allowed.'
    else
      result = first_operand.public_send operation, second_operand
      "#{first_operand} #{operation} #{second_operand} = #{result}"

    end
  end
end

class CustomError < StandardError; end
