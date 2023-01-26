require 'task_formatter'

RSpec.describe TaskFormatter do  
context "if the task is complete" do
  it "returns - [x] Task title" do
    task = double :fakeTask, complete?: false
    formatted_task = TaskFormatter.new(task)
    task.complete?
    expect(formatted_task.format).to eq "- [x] #{task}" 
  end
end

context "if the task is incomplete" do
  it "returns - [ ] Task title" do
    task = double :fakeTask, complete?: true
    formatted_task = TaskFormatter.new(task)
    task.complete?
    expect(formatted_task.format).to eq "- [ ] #{task}" 
  end
end
end