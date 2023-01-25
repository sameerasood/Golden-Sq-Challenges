class Planner
  def initialize
    @diary_entry = []
    @todo = [] 

  end

  def add_entry(entry)
    @diary_entry.push(entry)
  end

  def add_todo(todo)
    @todo.push(todo)
  end

  def display_entries
    #returns list of diary entries
    return @diary_entry
  end

  def get_todolist
    return @todo
  end
end

class DiaryEntry
  def initialize(entry, phone_numbers)
    @entry = entry
    @numbers = phone_numbers
    @entries = []
  end

  def get_entrylist
    @entries.push(@entry)
    return @entries.join("")
  end

  def chosen_entry(wpm, minutes)
  #returns entry on the basis of how much time they have and their reading speed(wpm)
    readable_entries = @entries.filter do |entry|
    (entry.count(" ") + 1) <= wpm * minutes
    end
    return readable_entries.first
    end

end

class ToDo
 def initialize(task)
  @task = task
 end

end

