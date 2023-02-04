require 'takeaway'
require 'menu'
require 'order'

RSpec.describe Takeaway do
    it 'returns the complete menu' do
        take_away = Takeaway.new
        menu_1 = Menu.new("pizza", 5)
        take_away.add_menu(menu_1)
        expect(take_away.all).to eq [{:dish => "pizza", :price => 5}]
    end

    it 'returns menu with two entries' do
        take_away = Takeaway.new
        menu_1 = Menu.new("pizza", 5)
        menu_2 = Menu.new("pasta", 10)
        take_away.add_menu(menu_1)
        take_away.add_menu(menu_2)
        expect(take_away.all).to eq [{:dish => "pizza", :price => 5}, {:dish => "pasta", :price => 10}]
    end

    it 'returns itemised receipt' do
        take_away = Takeaway.new
        food_order = Order.new("pasta")
        menu_1 = Menu.new("piza", 5)
        menu_2 = Menu.new("pasta", 10)
        menu_3 = Menu.new("lemonade", 3)
        take_away.add_order(food_order)
        take_away.add_menu(menu_1)
        take_away.add_menu(menu_2)
        take_away.add_menu(menu_3)
        expect(take_away.receipt).to eq [{:dish => "pasta", :price => 10}]
    end    
end