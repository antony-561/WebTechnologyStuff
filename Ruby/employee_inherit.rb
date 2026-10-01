class Employee 
	attr_reader :name, :base_salary, :monthly_pay
	
	def initialize(name,base_salary)
		@name = name
		@base_salary = base_salary
	end
	
	def calculate_monthly_pay
		@monthly_pay = @base_salary/12
	end
end


class Manager < Employee
	attr_reader :total_salary
	def initialize(name,base_salary,bonus)
		super(name,base_salary)
		@bonus = bonus
	end
	
	def calculate_monthly_pay
		super
		@total_salary = @base_salary + (@bonus*12)
	end
	
	def display
		puts "Name: #{@name} Base Salary: #{@base_salary} Bonus/Month: #{@bonus} Total Salary: #{@total_salary}"
	end
end

m1 = Manager.new("leo",500000,4000)
m1.calculate_monthly_pay
m1.display
		