class Menu
    def initialize(dish, price)
        @dish = dish
        @price = price
    end

    def to_hash
        {dish: @dish, price: @price}
    end

end
