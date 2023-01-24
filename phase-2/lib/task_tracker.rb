class ToDo
  def initialize
    @task_array = []
    @tasklist = ""
  end

  def add(task)
    @task = task
    @task_array << @task
  end

  def list
  @tasklist = @task_array.join(", ")
  end

  def status(task)
  if @task_array.include?(task)
    @task_array.delete(task)
    return true
  else
    fail "Task doesn't exist"
  end
end
end

task = ToDo.new
task.add("Order Grocery")
task.add("Call Dentist")
task.status("Call Dentist")
task.list