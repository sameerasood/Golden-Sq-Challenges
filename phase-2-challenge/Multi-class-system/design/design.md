1. Describe the Problem
=> Create a regular diary to record their experiences. 
=> The user should be able to read past diary entries.
=> The user should be able to select diary entries to read on the basis of how much time they have and their reading speed(wpm).
=> The user wants to keep a todo list to keep track of all their tasks.
=> The user wants to see a list of mobile phone numbers in all their diary entries.

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ Planner             │
│                            │
│ - add(entry)          │
│ - todolist                 │
│                            │
│                            │
│   => [tasks...]            │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Contents(todo, [entry]) │
│                         │
│ - entries               │
│ - reading_time
│                         │
└─────────────────────────┘
Also design the interface of each class in more detail.

class Planner
  def initialize(todo)

  end
  
  def add(entry)
  #entry an instance of contents
  end
  
  def display_entries
  #returns entries with list of phone numbers in each of them
  end

  def todolist
    #returns list of todos
  end

end

class Contents
  def initialize(todo, [entry])

  end

  def diary_entry
  #gives you an array of diary_entries from entry array
  end

  def chosen_entry(reading_time, wpm)
  #returns entry on the basis of how much time they have and their reading speed(wpm)
  end
end

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Gets all tracks
task = Planner.new
entry_1 = Contents.new("Order Grocery", ["It is cold today", "12345 5467863, 7357282"])
task.add(entry_1)
task.display_entries => ["It is cold today", "12345 5467863, 7357282"]
task.todolist => ["Order Grocery"]


4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Constructs a track
entry_1 = Contents.new("Order Grocery", ["It is cold today", "12345 5467863, 7357282"])
entry_1.diary_entry => ["It is cold today"]

entry_1 = Contents.new("Order Grocery", ["It is cold", "12345 5467863, 7357282"])
entry_1.diary_entry => ["It is cold"]
entry_1.reading_time(3,1) => ["It is cold"]

Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.