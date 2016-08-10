class AccountStatement

	def printer(statement)
		puts "date 			|| 	credit 	|| 	debit 	|| 	balance\n------------------------||--------------||--------------||--------------"

		statement.reverse.each do |hash|
				puts "#{hash[:date]}		|| 	#{hash[:credit] || ""} 	|| 	#{hash[:debit] || ""} 	|| 	#{hash[:balance]}"
		end
	end
end
