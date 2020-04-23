class Genre
  @@all = []

  attr_reader :name, :song, :artist

  def initialize(name, artist, song)
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end
end
