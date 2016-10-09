class Item 
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end

end



class Houseware < Item

end

class Fruit < Item
    
end

class ShoppingCart
    def initialize
        @items = []
        @articles = 0
    end

    def add_item(item)
        @items.push(item)
        @articles += 1
    end
    def checkout
        total_price = 0.00

        @items.each do |item|
            total_price += item.price
        end
        if @articles > 5
            discount = total_price/10
            total_price -= discount
        end
        total_price
    end
end


joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(banana)
joshs_cart.add_item(rice)
puts joshs_cart.checkout
