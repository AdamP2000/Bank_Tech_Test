require 'credit_card'
describe CreditCard do
  before(:each) do
     @credit_card = CreditCard.new
   end
  it "has a default balance of 0 when initialized" do
    expect(@credit_card.balance).to eq(0)
  end
end
