require 'account_statement'

describe AccountStatement do

	let(:account_statement) {described_class.new}

	describe "#printer" do
		it "prints the statement" do
			account_activity = double("account_activity")
			allow(account_activity).to receive(:log).and_return [{credit: 1000, balance: 1000, date: '10/08/2016'}, {debit: 100, balance: 900, date: '10/08/2016'}]
			expect(account_statement.printer(account_activity.log)).to include("10/08/2016", 1000)
		end
	end

end
