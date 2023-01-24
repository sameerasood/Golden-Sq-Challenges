1. Describe the Problem
a. The user should be able to keep track of their tasks. They want a program where they can add todo tasks and see a list of them.
b. They want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface

# EXAMPLE

class ToDO
  def initialize

  end

  def add(task)
  takes task as a string

  def list(task)
  @task = task
   returns the list of tasks
  end

  def status(task)
  checks if the task exists in the list, if it does returns true and deletes the task from the array, else fails
  end
end
3. Create Examples as Tests

# EXAMPLE

# 1
task = ToDo.new
task.add = "Order Grocery"
task.list = ["Order Grocery"]

# 2
task = ToDo.new
task.add = "Order Grocery"
task.add = "Call Dentist"
task.list = ["Order Grocery", "Call Dentist"]

# 3
task = ToDo.new
task.add = "Order Grocery" 
task.add = "Order Grocery" 
task.list = ["Order Grocery", "Call Dentist"]
task.status = "Call Dentist" => true

# 4
task = ToDo.new
task.add = "Order Grocery" 
task.add = "Order Grocery" 
task.list = ["Order Grocery", "Call Dentist"]
task.status = "Book holiday" => fails

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.