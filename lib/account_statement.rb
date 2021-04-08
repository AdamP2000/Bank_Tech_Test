require_relative 'account'
class AccountStatement
  attr_accessor :account
  def initialize(account = Account.new)
    @account = account
  end

  def print_statement
  @account.transactions
  end

end
