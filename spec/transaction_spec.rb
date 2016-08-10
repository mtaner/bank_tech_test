require 'transaction'

describe AccountTransaction do

	let(:transaction) {described_class.new}

	describe "#balance" do
		it "is 0 prior to any transfers" do
			expect(transaction.balance).to eq(0)
		end
	end

	describe "#deposit" do
		it "increases the balance by the deposited amount" do
			expect{transaction.deposit(10)}.to change{transaction.balance}.by(10)
		end
	end

	describe "#withdrawal" do
		it "decreases the balance by the withdrawal amount" do
			transaction.deposit(10)
			expect{transaction.withdrawal(5)}.to change{transaction.balance}.by(-5)
		end
	end

end
