class Account
  DEFAULTBALANCE = 0
  attr_reader :balance, :transactions

  def initialize(balance = DEFAULTBALANCE)
    @balance = balance
    @transactions = [["date || credit || debit || balance"]]
  end

  def deposit(deposit_value, date_deposit)
    @balance = @balance + deposit_value
    @transactions << [date_deposit, deposit_value, 0, @balance]
  end

  def withdraw(withdraw_value, date_withdrawal)
    @balance = @balance - withdraw_value
    @transactions << [date_withdrawal, 0, withdraw_value, @balance]
  end
end
