require 'account'
describe Account do
  test_value = 50
  test_date = "10/11/00"
  before(:each) do
     @account = Account.new
   end
  describe '#deposit' do
    it "deposits the deposit value as the argument" do
      @account.deposit(test_value, test_date)
      expect(@account.balance).to eq test_value
    end
  end

  describe '#balance' do
    it "has a default balance of 0 when initialized" do
      expect(@account.balance).to eq(0)
    end
  end

describe '#withdraw' do
 it "deducts money from balance when you withdraw money" do
   @account.deposit(test_value, test_date)
   @account.withdraw(test_value, test_date)
   expect(@account.balance).to eq 0
 end
end

describe '#transactions' do
it "shows the users transaction history" do
  @account.deposit(test_value, test_date)
  balance = @account.balance
  expect(@account.transactions).to eq [["date || credit || debit || balance"],[test_date, test_value, balance]]
end
end
end
