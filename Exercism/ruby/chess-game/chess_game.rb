module Chess
  # TODO: define the 'RANKS' constant
  RANKS = 1..8
  p RANKS
  # TODO: define the 'FILES' constant
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_two = first_name[0..1]
    last_two = last_name[-2..]
    "#{first_two}#{last_two}".upcase
  end

  def self.move_message(first_name, last_name, square)
    n_name = nick_name(first_name, last_name)
    files = square[0]
    ranks = square[1].to_i
    if valid_square?(ranks, files)
      "#{n_name} moved to #{square}"
    else
      "#{n_name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
