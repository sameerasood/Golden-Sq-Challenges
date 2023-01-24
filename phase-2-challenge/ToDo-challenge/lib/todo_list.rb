class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list.push(todo)
  end

  def incomplete
    return @todo_list.select { |todo| !todo.done? }
  end

  def complete
    return @todo_list.select { |todo| todo.done?}
  end

  def give_up!
    @todo_list.each do |todo|
        todo.mark_done!
    end
  end
end