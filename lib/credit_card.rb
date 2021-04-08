class CreditCard
DEFAULTBALANCE = 0
attr_reader :balance
  def initialize(balance = DEFAULTBALANCE)
      @balance = balance
  end

  def deposit(deposit_value)
    puts "Enter the date of this deposit"
    date_deposit = gets.chomp
    @balance = @balance + deposit_value
  end

  def withdraw(withdraw_value)
    puts "Enter the date of this withdawal"
    date_withdrawal = gets.chomp
    @balance = @balance - withdraw_value
  end

end
