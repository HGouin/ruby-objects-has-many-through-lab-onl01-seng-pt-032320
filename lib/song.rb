class Song
@@ all = []
  attr_reader :name, :artist, :genre

  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    @artist = artist
  end

  def self.all
    @@all
  end
end
