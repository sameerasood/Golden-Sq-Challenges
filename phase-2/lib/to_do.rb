def to_do(task)
  fail "No task entered!" if task.empty?
  task.split(" ")
  if task.include?("#TODO")
    return true
  else
    return false
  end
end