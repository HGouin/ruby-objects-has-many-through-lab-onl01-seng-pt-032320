class Artist

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def name
  @name = name
end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
end
