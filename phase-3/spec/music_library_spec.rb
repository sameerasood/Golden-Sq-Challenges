require 'music_library' 

RSpec.describe MusicLibrary do
    it "adds tracks to the library" do
        music = MusicLibrary.new
        track_1 = double :faketrack
        music.add(track_1)
    expect(music.all).to eq [track_1]
    end 

    it "adds multiple tracks to the library" do
        music = MusicLibrary.new
        track_1 = double :faketrack1
        track_2 = double :faketrack2
        music.add(track_1)
        music.add(track_2)
    expect(music.all).to eq [track_1, track_2]
    end

    it "returns the track with keyword in it" do
        music = MusicLibrary.new
        track_1 = double :faketrack1, matches?: true
        music.add(track_1)
        expect(music.search("ket")).to eq [track_1]
    end

    it "returns the track with keyword in it" do
        music = MusicLibrary.new
        track_1 = double :faketrack1
        expect(track_1).to receive(:matches?).with("two").and_return(true)
        track_2 = double :faketrack2
        expect(track_2).to receive(:matches?).with("two").and_return(true)
        music.add(track_1)
        music.add(track_2)
        expect(music.search("two")).to eq [track_1, track_2]
    end

    
end

