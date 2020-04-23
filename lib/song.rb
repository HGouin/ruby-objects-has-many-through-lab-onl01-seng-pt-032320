class Song
@@ all = []
  attr_reader :name, :artist, :genre

  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    @artist = artist
  end
end
