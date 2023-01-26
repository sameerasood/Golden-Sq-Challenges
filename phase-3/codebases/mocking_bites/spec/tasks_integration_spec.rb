require "task_list"
require "task"
require "task_formatter"

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  context "returns the task" do
  it "returns - [ ] Task title" do do
    task = Task.new("my_task")
    formatted_task = TaskFormatter.new(task)
    expect(formatted_task.format).to eq "- [ ] #{task}" 
  end
  end

  context "if the task is incomplete" do
  it "returns - [x] Task title" do
    task = Task.new("my_task")
    formatted_task = TaskFormatter.new(task)
    task.complete?
    expect(formatted_task.format).to eq "- [x] #{task}"
  end
  end
end
