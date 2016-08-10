class AccountStatement

	def print(statement)
		puts "date" + "%15s" % "||" + "%14s" % "credit(£)" + "%6s" % "||" + "%14s" % "debit(£)" + "%6s" % "||" + "%14s" % "balance(£)"
		puts "-------------------------------------------------------------------------"

		statement.reverse.each do |hash|
				puts "#{hash[:date]}" + "%9s" % "||" + "%10s" % "#{hash[:credit] || ""}" + "%10s" % "||" + "%10s" % "#{hash[:debit] || ""}" + "%10s" % "||" + "%10s" % "#{hash[:balance]}"
		end
	end
end
