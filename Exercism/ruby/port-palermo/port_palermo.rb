# frozen_string_literal: true

# Port module
module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    truncated_name = city.slice(0..3).upcase
    truncated_name.to_sym
  end

  def self.get_terminal(ship_identifier)
    truncated = ship_identifier.to_s.slice(0..2)
    if %w[OIL GAS].include?(truncated)
      :A
    else
      :B
    end
  end
end
