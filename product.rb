class Product
	def initialize(pname,price,tax_rate)
		@name = pname
		@base_price
		@tax_rate
	end

	def total_price
		total = @base_price * @tax_rate
		return total
	end
end