require 'task_tracker'

RSpec.describe ToDo do
  it "returns one task" do
    task = ToDo.new
    task.add("Order Grocery")
    expect(task.list).to eq "Order Grocery"
  end

  it "returns the list of tasks" do
    task = ToDo.new
    task.add("Order Grocery")
    task.add("Call Dentist")
    expect(task.list).to eq "Order Grocery, Call Dentist"
  end

  it "returns true if the list includes task" do
    task = ToDo.new
    task.add("Order Grocery")
    task.add("Call Dentist")
    status = task.status("Call Dentist")
    expect(task.list).to eq "Order Grocery"
    expect(status).to be true
  end

  it "fails if the list does not include task" do
    task = ToDo.new
    task.add("Order Grocery")
    task.add("Call Dentist")
    expect(task.list).to eq "Order Grocery, Call Dentist"
    expect{task.status("Book Holiday")}.to raise_error "Task doesn't exist"
  end
end