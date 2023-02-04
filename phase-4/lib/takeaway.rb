class Takeaway 
    def initialize
        @menu = []
        @order = ""
        order_receipt = []
    end

    def add_menu(menu)
        @menu.push(menu.to_hash)
    end

    def add_order(order)
        @order = order
        return @order
    end

    def all
        return @menu
    end

    def receipt
    index = @menu.select { |item| item[:dish] == @order.final_order}
    return index
    end
end

