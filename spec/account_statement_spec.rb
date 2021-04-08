require 'account_statement'

describe AccountStatement do
  before(:each) do
    @account_statement = AccountStatement.new
  end
  let(:account) {double :account}

  describe '#print_statement' do
    before do
      allow(@account_statement.account).to receive(:transactions).and_return([["date || credit || debit || balance"], ["10/11/00", 50, 0, 50]])
    end
    it "prints a bank statement" do
      expect(@account_statement.account.transactions).to eq [["date || credit || debit || balance"], ["10/11/00", 50, 0, 50]]
    end
  end
end
