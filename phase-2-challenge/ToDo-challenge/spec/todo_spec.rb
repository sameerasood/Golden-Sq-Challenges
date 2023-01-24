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

    it "returns true for the completed tasks" do
        todo = Todo.new("Order Grocery")
        expect(todo.mark_done!).to be true
    end

    it "returns true if the task has been finished" do
        todo = Todo.new("Order Grocery")
        expect(todo.done?).to be false
    end
end