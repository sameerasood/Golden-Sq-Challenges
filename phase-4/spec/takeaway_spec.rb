require 'takeaway'

RSpec.describe Takeaway do
it 'returns the complete menu' do
    take_away = Takeaway.new
    fake_menu = double :fakemenu
    take_away.add_menu(fake_menu)
    expect(take_away.all).to eq [fake_menu]
end

it 'returns menu with two entries' do
    take_away = Takeaway.new
    fake_menu1 = double :fakemenu
    fake_menu2 = double :fakemenu
    take_away.add_menu(fake_menu1)
    take_away.add_menu(fake_menu2)
    expect(take_away.all).to eq [fake_menu1, fake_menu2]
end

it 'returns itemised receipt' do
    take_away = Takeaway.new
    fake_order = double :fakeorder
    fake_menu1 = double :fakemenu
    fake_menu2 = double :fakemenu
    fake_menu3 = double :fakemenu
    take_away.add_order(fake_order)
    expect(take_away.receipt).to eq [fake_menu1]
end 

end