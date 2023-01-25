require 'planner'

RSpec.describe 'Planner and Contents integration' do

  it 'displays 1 diary entry with a list of phone numbers' do
    task = Planner.new
    entry_1 = DiaryEntry.new("It is really cold today", "1234 56748, 98710")
    task.add_entry(entry_1)
    expect(task.display_entries).to eq [entry_1]
  end

  it 'displays multiple diary entries with a list of phone numbers' do
    task = Planner.new
    entry_1 = DiaryEntry.new("It is really cold today", "1234 56748, 98710")
    entry_2 = DiaryEntry.new("Hello how are you", "343526, 3746838, 83646")
    task.add_entry(entry_1)
    task.add_entry(entry_2)
    expect(task.display_entries).to eq [entry_1, entry_2]
  end

  it 'adds task to the todo list' do
    event = Planner.new
    task = ToDo.new("Order Grocery")
    event.add_todo(task)
    expect(event.get_todolist).to eq [task]
  end

  it 'adds multiple tasks to the todo list' do
    event = Planner.new
    task_1 = ToDo.new("Order Grocery")
    task_2 = ToDo.new("Cook Dinner")
    task_3 = ToDo.new("Meditate")
    event.add_todo(task_1)
    event.add_todo(task_2)
    event.add_todo(task_3)
    expect(event.get_todolist).to eq [task_1, task_2, task_3]
  end

  it 'returns 1 entry' do
    event = Planner.new
    entry_1 = DiaryEntry.new("It is really cold today tomorrow", "1234 56748, 98710")
    
    expect(entry_1.get_entrylist).to eq "It is really cold today tomorrow"
  end

  it 'returns 1 entry out of two entries' do
    event = Planner.new
    entry_1 = DiaryEntry.new("It is really cold today tomorrow", "1234 56748, 98710")
    entry_1 = DiaryEntry.new("It is really cold today tomorrow everyday", "1234 56748, 98710")
    expect(entry_1.get_entrylist).to eq "It is really cold today tomorrow everyday"
  end
end