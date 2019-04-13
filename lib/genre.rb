class Genre

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|x| x.genre == self}
  end

  def artists
    self.songs.collect {|x| x.artist}
  end

end
