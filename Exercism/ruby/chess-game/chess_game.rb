module Chess
  # TODO: define the 'RANKS' constant
  RANKS = 1..8
  p RANKS
  # TODO: define the 'FILES' constant
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(_first_name, _last_name)
    raise 'Please implement the Chess.nick_name method'
  end

  def self.move_message(_first_name, _last_name, _square)
    raise 'Please implement the Chess.move_message method'
  end
end
