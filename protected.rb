# class Parent
# 	private
# 	def whisper_secret
# 		puts "parent's secret"
# 	end
# end

# class Child < Parent
# 	def expose_secret
# 		whisper_secret
# 	end
# end

# c = Child.new
# c.expose_secret

# #c.whisper_secret

class Parent
	protected
	def whisper_family_secret
		puts "Shhh!"
	end
end

class Child < Parent
	def chat(other)
		other.whisper_family_secret
	end
end

class Stranger
	def chat(other)
		other.whisper_family_secret
	end
end

jo = Child.new
juha = Child.new
skeev = Stranger.new

skeev.chat(jo) #error ist protected

jo.chat(juha)

juha.chat(jo)


# public
# thing = Thing.new
# thing.public_method

# private
# thing = Thing.new
# thing.private_method # error

# protected
# thing = Thing.new
# thing.protected_method # error if self is unrelated





