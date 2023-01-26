class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks.push(track)
  end

  def all
    return @tracks
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    return @tracks.select do |track|
        track.matches?(keyword)
    end
  end
end