# frozen_string_literal: true

# Port module
module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    truncated_name = city.slice(0..3).upcase
    truncated_name.to_sym
  end

  def self.get_terminal(_ship_identifier)
    raise 'Please implement the Port.get_terminal method'
  end
end
