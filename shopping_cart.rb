require_relative 'product.rb'

class Shopping_cart
	@@items_in_cart
	@@after_tax_price = 0
	def add_product(pname,price,tax_rate)
		new_product = Product.new(pname,price,tax_rate)
		@@items_in_cart << new_product
		return new_product
	end

	def remove_product
		@@items_in_cart.each do |removable|
			if removable == self
				removable.delete(self)
			end
		end
	end

	def self.cost_b4_tax
		
	end

	def self.cost_after_tax
		@@items_in_cart.each do |price|
			@@after_tax_price += price.total
		end
	end
end