1. Describe the Problem
The user can keep track of their music listening.
a. They want to add tracks that they have listened to.
b. They want to see a list of them.


2. Design the Class Interface

# EXAMPLE

class Music
  def initialize

  end

  def add(track)
  adds track that they have listened to.

  def list
  Will return the list of tracks
  end

end
3. Create Examples as Tests

# EXAMPLE

# 1
track = Music.new
track.add("We don't talk about Bruno")

# 2
track = Music.new
track.add("We don't talk about Bruno")
track.add("Antihero")
track.list("We don't talk about Bruno", "Antihero")

# 3
track = Music.new
track.add("We don't talk about Bruno")
track.add("Antihero")
track.add("Top of the world")
track.list("We don't talk about Bruno", "Antihero", "Top of the world")

# 4
track = Music.new
track.list fails if no tasks are added.

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.