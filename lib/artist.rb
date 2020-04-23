class Artist
  attr_reader :name, :genre
  @@all = []
  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |songs|
    songs.artist == self
  end
end
end
