module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end
  end

  def self.card_range(_card1, _card2)
    raise "Please implement the Blackjack.card_range method"
  end

  def self.first_turn(_card1, _card2, _dealer_card)
    raise "Please implement the Blackjack.first_turn method"
  end
end

# ace	11	eight	8
# two	2	nine	9
# three	3	ten	10
# four	4	jack	10
# five	5	queen	10
# six	6	king	10
# seven	7	other	0
