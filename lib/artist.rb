class Artist

  attr_accessor :name, :song_name, :genre

  @@all = []

  #Class Methods

  def self.all
    @@all
  end

  #Instance Methods

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select {|x| x.artist == self}
  end

  def genres
    self.songs.collect {|x| x.genre}
  end

end
