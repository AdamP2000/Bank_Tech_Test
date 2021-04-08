class Account
DEFAULTBALANCE = 0
attr_reader :balance
  def initialize(balance = DEFAULTBALANCE)
      @balance = balance
  end

  def deposit(deposit_value, date_deposit)
    @balance = @balance + deposit_value
  end

  def withdraw(withdraw_value, date_withdrawal)
    @balance = @balance - withdraw_value
  end

end
