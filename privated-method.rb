class Table
	def a_public_method
		a_private_method
	end
	
	private 

	def a_private_method
	end
end

t = Table.new
t.a_public_method

#t.a_private_method
t.send :a_private_method

class Bank
	def transfer
		withdraw
		deposit
	end

	private

	def withdraw; end
	def deposit; end
end

class Account
	attr_reader :balance
	def initialize(name, initial_deposit)
		@account_holder = name
		@balance = initial_deposit
	end

	def deposit(amount)
		@balance += amount
	end
	private
	def balance=(amount)
		@balance = amount