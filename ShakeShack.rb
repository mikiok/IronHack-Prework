class Ingredient
  	attr_reader :name, :price
  	def initialize(name, price)
		@name = name
      	@price = price
  	end
end


class MilkShake
  	def initialize
    	@base_price = 3
    	@ingredients = [ ]    
  	end

  	def add_ingredient(ingredient)
    	@ingredients.push(ingredient)
  	end
	def price_of_milkshake
		total_price_of_milkshake = @base_price

		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end

		total_price_of_milkshake
	end
end


class ShakeShock

	def initialize
		@milkshakes = [ ]
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def milkshakes_price
		total_price = 0

		@milkshakes.each do |milkshake|
			total_price += milkshake.price_of_milkshake
		end

		total_price
	end

end


fresas = Ingredient.new "fresas", 2
chocolate = Ingredient.new "chocolate", 3

batido1 = MilkShake.new
batido1.add_ingredient (fresas)
puts batido1.price_of_milkshake

batido2 = MilkShake.new
batido2.add_ingredient fresas
batido2.add_ingredient chocolate
puts batido2.price_of_milkshake

juan = ShakeShock.new
juan.add_milkshake batido1
juan.add_milkshake batido2
puts juan.milkshakes_price



