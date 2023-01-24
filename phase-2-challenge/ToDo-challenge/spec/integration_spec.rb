require 'todo'
require 'todo_list'

RSpec.describe "Todo Integration" do
    it "adds a task to the todo list" do
    todo_list = TodoList.new
    task = Todo.new("Order Grocery")
    todo_list.add(task)
    expect(todo_list.incomplete).to eq [task]
    end

    it "returns completed tasks" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      task_2 = Todo.new("Cook Dinner")
      todo.add(task)
      todo.add(task_2)
      task.mark_done!
      expect(todo.complete).to eq [task]
    end

    it "returns the list of given up tasks" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      task_2 = Todo.new("Cook Dinner")
      todo.add(task)
      todo.add(task_2)
      expect(todo.give_up!).to eq [task, task_2]
    end
end