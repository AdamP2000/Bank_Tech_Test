require_relative 'account'

class AccountStatement
  attr_accessor :account

  def initialize(account = Account.new)
    @account = account
  end

  def print_statement
    bank_statements = @account.transactions
    for bank_statement in bank_statements
      puts bank_statement.join(" || ")
    end
  end
end
