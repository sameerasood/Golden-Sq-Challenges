require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "returns 1 task" do
    task_list = TaskList.new
    task_1 = double :faketask1
    task_list.add(task_1)
    expect(task_list.all).to eq [task_1]
  end

  it "returns 2 task2" do
    task_list = TaskList.new
    task_1 = double :faketask1
    task_2 = double :faketask2
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "returns false" do
    task_list = TaskList.new
    task_1 = double :faketask1
    expect(task_1).to receive(:complete?).and_return(false)
    task_list.add(task_1)
    expect(task_list.all_complete?).to eq(false)
  end

  it "returns task if task is given" do
    task_list = TaskList.new
    task_1 = double :faketask1
    expect(task_1).to receive(:complete?).and_return(true)
    task_list.add(task_1)
    expect(task_list.all_complete?).to eq(true)
  end
end
