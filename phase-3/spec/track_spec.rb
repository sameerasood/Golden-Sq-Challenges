require 'track'

RSpec.describe Track do
 it "returns true if the title or artist include the keyword" do
        track_1 = Track.new("abc def", "Ken")
        check_keyword = track_1.matches?("abc")
        expect(check_keyword).to be true
    end

    it "returns error if the title or artist does not include the keyword" do
        track_1 = Track.new("abc def", "Ken")
        check_keyword = track_1.matches?("Ken")
        expect(check_keyword).to be true
    end

    it "returns error if the title or artist does not include the keyword" do
        track_1 = Track.new("abc def", "Ken")
        expect(track_1.matches?("xyz")).to be false
    end
end