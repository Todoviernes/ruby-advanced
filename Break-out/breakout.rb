class Car
	def initialize (color, type)
		@color = color #Instance variable
		@type = type #Instance variable
	end

	def honk
		return "Beep, beep!"
	end
end	

class Person
	attr_accessor :name, :height


	def initialize(name, height)
		@name = name
		@height = height
	end

	def set_name(name)
		@name = name
	end

	# def heigth_person
	# 	@height = height
	# end

	def get_name
		@name
	end
	
	def car_wash
		return "#{get_name} Hey maybe you shuld get a wash for your #{height}"
	end

end

santi = Person.new("Santiago", "1.80m")
puts santi.car_wash
santi.set_name("Santiago")
puts santi.get_name
santi.get_name
puts santi.height

#lucille is a new instance of a car.
#lucille = Car.new("black", "sedan") #Color and type defined.

#lucille.honk

#puts car_wash()