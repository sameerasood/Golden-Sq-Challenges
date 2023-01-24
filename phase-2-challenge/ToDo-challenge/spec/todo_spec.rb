require 'todo'

RSpec.describe Todo do
    it "returns empty string if no tasks are added" do
        todo = Todo.new("")
        expect(todo.task).to eq ""
    end

    it "returns the task as a string" do
        todo = Todo.new("Order Grocery")
        expect(todo.task).to eq "Order Grocery"
    end
end