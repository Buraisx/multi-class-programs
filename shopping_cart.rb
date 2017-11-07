require_relative 'product.rb'

class Shopping_cart
	@@items_in_cart = []
	@@after_tax_price = 0
	@@b4_tax_price = 0
	def add_product(pname,price,tax_rate)
		new_product = Product.new(pname,price,tax_rate)
		@@items_in_cart << new_product
		return new_product
	end
	def self.all_items
		@@items_in_cart
	end
	def remove_product
		@@items_in_cart.each do |removable|
			if removable == self
				removable.delete(self)
			end
		end
	end

	def self.cost_b4_tax
		@@items_in_cart.each do |item|
			@@b4_tax_price += item.price
		end
		return @@b4_tax_price
	end

	def self.cost_after_tax
		@@items_in_cart.each do |item|
			@@after_tax_price += item.total_price
		end
		return @@after_tax_price 
	end
end


shoppers = Shopping_cart.new
shoppers.add_product("shampoo", 10,1.13)
shoppers.add_product("soap", 5, 1.13)
puts Shopping_cart.all_items.inspect
puts Shopping_cart.cost_b4_tax
puts Shopping_cart.cost_after_tax
