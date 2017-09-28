# class Person
# 	def whoami; "i'm a person"; end
# end

# class Parent #< Person
# 	def whoami(arg); super + " and I'm a parent"; end
# end

class Parent
	def whoami(arg);  "and I'm a parent"; end
end
class Child < Parent
	def whoami; puts "I'm a child"; end
end




p = Parent.new
puts p.whoami(1)

c = Child.new
c.whoami

