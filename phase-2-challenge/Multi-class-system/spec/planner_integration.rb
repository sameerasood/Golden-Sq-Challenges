require 'planner'

RSpec.describe 'Planner and Contents integration' do
  it 'adds diary entry and list of phone numbers' do
    task = Planner.new
    entry_1 = Contents.new("Order Grocery", ["It is really colde today", "1234 56748, 98710"])
    task.add(entry_1)
    expect(task.display_entries).to eq ["It is really colde today", "1234 56748, 98710"]
  end
end