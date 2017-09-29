class Product
	@@all_products_sold = []
	@totally_profit = 0

	def self.all_products_sold

	end

	def self.totally_profit
	
	end

	def initialize (name, price)
		@name = name
		@price = price
	end

	def sell
		@@totally_profit_from_products += @price
		@@all_products_sold << self
	end
	
end


tv = Product.new('Panasonic', '250')