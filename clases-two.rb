class Table
	@@next_table_id = 1
	attr_reader :id

	def initialize
		@id = @@next_table_id
		@@next_table_id += 1
	end

	def change_next_id(next_id)
		@@next_table_id = next_id
	end

	def self.next_table_id
		@@next_table_id #class variable 
	end

	def self.has_legs? #<- class methods as a self.has_legs?
		true	
	end

	def preview_next_id  #instance method
		@@next_table_id  #class variable 
	end

end

# puts Table.has_legs?

# p Table.next_table_id

# p t = Table.new
# p t.next_table_id

# instances cannot acces class methods
t = Table.new
p t.id


t2 = Table.new
p t2.id

puts "the next id back at the factory is #{t2.preview_next_id}"

t2.change_next_id(99)
puts "we cahanged the @@next_table_id and it is now #{t2.preview_next_id}"

puts ""
