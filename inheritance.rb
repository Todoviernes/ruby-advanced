class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle
end

class Motorcycle < Vehicle
end

module Talkative
  def speak
      puts "Hello world!"
  end
end

class Kitt < Car
    include Talkative
end


print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass

print Kitt.ancestors
puts Kitt.superclass

kitt = Kitt.new
kitt.speak