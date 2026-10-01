class Account
	attr_reader :account_number, :balance
	
	def initialize(account_number,balance)
		@account_number = account_number
		@balance = balance
	end
	
	def deposit(amount)
		@balance += amount
	end
	def display
		puts "Account Number: #{@account_number}"
		puts "Account Balance: #{@balance}"
	end
end

class SavingsAccount < Account
	attr_reader :interest_rate, :interest_amt

	def initialize(account_number,balance,interest_rate)
		super(account_number,balance)
		@interest_rate = interest_rate
	end
	
	def apply_interest
		puts "#{@balance} in account"
		@interest_amt = (@balance * (@interest_rate/100.0))
		@balance += @interest_amt
	end
	
	def display
		super
		puts "Account Interest Amount: #{@interest_amt}"
	end
end

acc1 = SavingsAccount.new("001",500,10)
acc1.apply_interest
acc1.display