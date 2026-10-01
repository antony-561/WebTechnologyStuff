class Vehicle
	def initialize(brand, year)
	@brand = brand
	@year = year
	end
	def display
		puts "MANUFACTURER : #{@brand}"
		puts "YEAR : #{@year}"
	end
end

class Car < Vehicle
	def initialize(brand,year,type)
	super(brand,year)
	@type = type
	end
	
	def display
		super.display
		puts "CAR IS A #{@type} CAR"
	end
end
	

v1 = Car.new("Ford",1968,"Muscle")
v1.display

