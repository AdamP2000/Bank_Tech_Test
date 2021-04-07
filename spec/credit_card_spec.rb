require 'credit_card'
describe CreditCard do
  test_value = 50
  before(:each) do
     @credit_card = CreditCard.new
   end
  describe '#deposit' do
    it "has a default balance of 0 when initialized" do
      expect(@credit_card.balance).to eq(0)
    end
    it "deposits the deposit value as the argument" do
      @credit_card.deposit(test_value)
      expect(@credit_card.balance).to eq test_value
    end
  end

describe '#withdraw' do
 it "deducts money from balance when you withdraw money" do
   @credit_card.deposit(test_value)
   @credit_card.withdraw(test_value)
   expect(@credit_card.balance).to eq 0
 end
end
end
