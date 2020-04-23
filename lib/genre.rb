class Genre
  @@all = []

  attr_reader :name, :song, :artist

  def initialize(name)
    @name = name
  end
end
