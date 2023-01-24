class Diary
  def initialize
    @diary_entry = []
    @sum = 0
  end

  def add(entry) # entry is an instance of DiaryEntry
    @diary_entry << entry
  end

  def all
    return @diary_entry
  end

  def count_words
    @diary_entry.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "WPM must not be zero" if wpm < 1
    return(count_words/ wpm.to_f).ceil 
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
    entry.reading_time(wpm) <= minutes
    end
  return readable_entries.first
  end
end

