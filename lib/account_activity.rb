class AccountActivity

	attr_reader :log

	def initialize
		@log = []
	end

	def add_deposit_log(amount, balance)
		@log << {credit: amount, balance: balance, date: time_stamp}
	end

	def add_withdrawal_log(amount, balance)
		@log << {debit: amount, balance: balance, date: time_stamp}
	end


	private

	def time_stamp
		Time.new.strftime("%d/%m/%Y")
	end

end
