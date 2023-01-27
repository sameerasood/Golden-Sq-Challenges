require 'diary'

RSpec.describe Diary do
  context "reads the contents of the diary" do
    it "returns the diary content" do
      my_diary = Diary.new("diary content")
      expect(my_diary.read).to eq "diary content"
    end
  end
end