require 'diary_entry'

RSpec.describe DiaryEntry do
  it "manages the reading and writing in a diary" do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.title
    expect(result).to eq "Today"
  end

  it 'returns the contents of the diary' do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.contents
    expect(result).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different."
  end
  
  it 'returns the number of words in the contents of the diary' do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.count_words
    expect(result).to eq 21
  end

  it 'returns the user reading time based on their wpm ability' do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.reading_time(200)
    expect(result).to eq 1
  end

  it 'return a section of contents that the user can read within given parameters' do
    diary_entry = DiaryEntry.new("Today", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different.")
    result = diary_entry.reading_chunk(3, 5)
    expect(result).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely"
  end
end 