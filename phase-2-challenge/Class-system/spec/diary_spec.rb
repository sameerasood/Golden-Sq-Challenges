require 'diary'

RSpec.describe Diary do
  it "initially returns an empty array" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
end 