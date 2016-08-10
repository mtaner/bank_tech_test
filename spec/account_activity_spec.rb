require "account_activity"

describe AccountActivity do
	let(:account_activity) {described_class.new}

	describe "#add_deposit_log" do
		it "logs the deposits on the account with date" do
			account_activity.add_deposit_log(10, 20)
			expect(account_activity.log).to eq([{credit: 10, balance: 20, date: '10/08/2016'}])
		end
	end

	describe "#add_withdrawal_log" do
		it "logs the withdrawals on the account with date" do
			account_activity.add_withdrawal_log(10, 0)
			expect(account_activity.log).to eq([{debit: 10, balance: 0, date: '10/08/2016'}])
		end
	end
end
