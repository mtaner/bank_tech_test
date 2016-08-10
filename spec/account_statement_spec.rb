require 'account_statement'

describe AccountStatement do

	let(:account_statement) {described_class.new}

	describe "#printer" do
		it "prints the statement" do
			account_activity = double("account_activity")
			allow(account_activity).to receive(:log).and_return [{credit: 1000, balance: 1000, date: '10/08/2016'}, {debit: 100, balance: 900, date: '10/08/2016'}]
			output = "date \t\t\t|| \tcredit \t|| \tdebit \t|| \tbalance\n------------------------||--------------||--------------||--------------\n10/08/2016\t\t|| \t \t|| \t100 \t|| \t900\n10/08/2016\t\t|| \t1000 \t|| \t \t|| \t1000\n"
			expect{account_statement.printer(account_activity.log)}.to output(output).to_stdout
		end
	end

end
