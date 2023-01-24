class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @current_reading_index = 0
    @words = @contents.split(' ')
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").count
  end

  def reading_time(wpm)
    fail "WPM must not be zero" unless wpm.positive?
    return(count_words/ wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    current_words = wpm * minutes
    start_index = @current_reading_index
    end_index = start_index + (current_words - 1)
    if end_index < @words.count - 1
      return @words[start_index..end_index].join(' ')
    else
      end_index = @words.count - 1
      return @words[start_index..end_index].join(' ')
    end   
    @current_reading_index += current_words
  end
end
