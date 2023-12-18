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

  def self.card_range(card1, card2)
    sum = parse_card(card1) + parse_card(card2)
    case sum
    when 4..11 then "low"
    when 17..20 then "high"
    when 12..16 then "mid"
    when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealercard)
    sum = parse_card(card1) + parse_card(card2)
    range = card_range(card1, card2)
    if %w[high mid].include?(range) || (sum == 21 && dealercard == "ace")
      "S"
    elsif sum <= 11
      "H"
    elsif card1 == "ace" && card2 == "ace"
      "P"
    elsif sum == 21 && (dealercard != "ace" || parse_card(dealercard) != 10)
      "W"
    end
  end
end
