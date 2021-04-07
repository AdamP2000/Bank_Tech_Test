class CreditCard
DEFAULTBALANCE = 0
attr_reader :balance
  def initialize(balance = DEFAULTBALANCE)
      @balance = balance
  end
  def deposit(deposit_value)
    @balance = @balance + deposit_value
  end
end
