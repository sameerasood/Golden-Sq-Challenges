require 'music_library'
require 'track'

RSpec.describe MusicLibrary do
    it "adds tracks to the library" do
        music = MusicLibrary.new
        track_1 = Track.new("abc def", "Ken")
        music.add(track_1)
    expect(music.all).to eq [track_1]
    end 

    it "adds multiple tracks to the library" do
        music = MusicLibrary.new
        track_1 = Track.new("abc def", "Ken")
        track_2 = Track.new("ghi jkl", "Ben")
        music.add(track_1)
        music.add(track_2)
    expect(music.all).to eq [track_1, track_2]
    end

     it "returns the track with a keyword in the title and artist" do
        music = MusicLibrary.new
        track_1 = Track.new("abc matches def", "Ken")
        track_2 = Track.new("ghi jkl", "Ben matches")
        music.add(track_1)
        music.add(track_2)
    expect(music.search("matches")).to eq [track_1, track_2]
    end 
end

