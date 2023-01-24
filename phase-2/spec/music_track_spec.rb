require 'music_track'

RSpec.describe Music do
  it "adds one song" do
    track = Music.new
    expect(track.add("We don't talk about Bruno")).to eq ["We don't talk about Bruno"]
  end

  it "adds two songs and displays the list" do
    track = Music.new
    track.add("We don't talk about Bruno")
    track.add("Antihero")
    track.list
    expect(track.list).to eq "We don't talk about Bruno, Antihero"
  end

  it "adds three songs and displays the list" do
    track = Music.new
    track.add("We don't talk about Bruno")
    track.add("Antihero")
    track.add("Top of the world")
    expect(track.list).to eq "We don't talk about Bruno, Antihero, Top of the world"
  end

  it "fails" do
    track = Music.new
    expect{track.list}.to raise_error "No tracks added"
    end
end

