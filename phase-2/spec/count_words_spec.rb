#A method called count_words that takes a string as
#an argument and returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words" do 
  it "returns the string" do
    string = count_words("Good night stories for rebel girls")
    expect(string).to eq 6
  end

  context "gives an error if string is empty" do
    it "gives error" do
    expect{count_words("")}.to raise_error ("No string entered!")
    end
  end

  context "gives an error if string is nil" do
    it "gives error" do
    expect{count_words(nil)}.to raise_error ("No string entered!")
    end
  end
end

