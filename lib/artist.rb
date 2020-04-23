class Artist
  attr_reader :name, :genre
  @@all = []
  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Artist.new(name, genre)

  end

  def songs
    Song.all.select do |song|
    song.artist == self
  end
end

def genres
end
end
