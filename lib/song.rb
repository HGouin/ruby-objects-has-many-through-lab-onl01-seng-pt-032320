class Song
@@all = []
  attr_reader :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
