require_relative 'account'
class AccountStatement
  attr_accessor :account
  def initialize(account = Account.new)
    @account = account
  end

  def print_statement
    index = 1
    index_2 = 0
    bank_statement = @account.transactions
    for arrays in bank_statement
        puts arrays.join(" || ")
    end
    end
  end
