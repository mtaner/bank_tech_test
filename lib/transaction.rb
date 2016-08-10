require_relative 'account_activity'

class AccountTransaction

	attr_reader :balance, :account_activity

	def initialize(balance = 0, account_activity = AccountActivity.new)
		@balance = balance
		@account_activity = account_activity
	end

	def deposit(amount)
		@balance += amount
		@account_activity.add_deposit_log(amount, @balance)
	end

	def withdrawal(amount)
		@balance -= amount
		@account_activity.add_withdrawal_log(amount, @balance)
	end

end
