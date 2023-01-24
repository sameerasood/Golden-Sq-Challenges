class Music
  def initialize
  @track_list = []
  tracks = ""
  end

  def add(track)
    @track = track
    @track_list.push(@track)
  end

  def list
    fail "No tracks added" if @track_list.empty?
    tracks = @track_list.join(", ")
    return tracks
  end 
end

track = Music.new
track.add("We don't talk about Bruno")
track.add("Antihero")
track.list
