require "diaryentry_classsystem"

RSpec.describe DiaryEntry do
  it "returns the contents" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.contents).to eq "my_contents"
  end

  it "returns the title" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
  end

  it "counts the words of entries' content" do
    diary_entry = DiaryEntry.new("my_title", "one two three four five")
    expect(diary_entry.count_words).to eq 5
  end

  it "returns 1 if there is only one word in the entry' content" do
    diary_entry = DiaryEntry.new("my_title 2", "six")
    expect(diary_entry.count_words).to eq 1
  end

  it "returns 0 if there is no content in the entry" do
    diary_entry = DiaryEntry.new("my title 3", "")
    expect(diary_entry.count_words).to eq 0
  end

  it "returns the time taken to read an entry" do
    diary_entry = DiaryEntry.new("my_title", "one two three four five")
    expect(diary_entry.reading_time(2)).to eq 3
  end

  it "returns 1 if there is only one word in the entry' content" do
    diary_entry = DiaryEntry.new("my_title 2", "six")
    expect(diary_entry.reading_time(2)).to eq 1
  end

  it "returns 0 if there is no content in the entry" do
    diary_entry = DiaryEntry.new("my title 3", "")
    expect(diary_entry.reading_time(2)).to eq 0
  end
end

RSpec.describe DiaryEntry do
  it "fails if wpm is less than 1" do
    diary_entry = DiaryEntry.new("my title 3", "six seven eight nine ten")
    expect{diary_entry.reading_time(0)}.to raise_error "WPM must not be zero"
  end

  it 'return a section of contents that the user can read within given parameters' do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.reading_chunk(3, 5)
    expect(result).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely"
  end
end