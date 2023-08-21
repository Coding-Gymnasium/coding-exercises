# frozen_string_literal: true

# Savings account module
module SavingsAccount
  def self.interest_rate(balance)
    case true
    when balance < 1000 && balance >= 0
      0.5
    when balance < 5000 && balance >= 1000
      1.621
    when balance >= 5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    interest = balance * (interest_rate(balance) / 100)
    interest + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    counter = 0
    balance = current_balance
    while balance <= desired_balance
      balance = annual_balance_update(balance)
      counter += 1
    end
    counter
  end
end
