require 'account_statement'

describe AccountStatement do

	let(:account_statement) {described_class.new}

	describe "#print" do
		it "prints the statement" do
			account_activity = double("account_activity")
			allow(account_activity).to receive(:log).and_return [{credit: 1000, balance: 1000, date: '10/08/2016'}, {debit: 100, balance: 900, date: '10/08/2016'}]
			output =
			"date             ||     credit(£)    ||      debit(£)    ||    balance(£)"\
			"\n-------------------------------------------------------------------------\n"\
			"10/08/2016       ||                  ||       100        ||       900\n"\
			"10/08/2016       ||      1000        ||                  ||      1000\n"
			expect{account_statement.print(account_activity.log)}.to output(output).to_stdout
		end
	end

end
