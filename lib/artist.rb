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
  end

  def new_song(song_name, genre)
    song = Song.new(song_name)
    song.genre = genre
    song.artist = self
  end

  def songs
    Song.all.select {|x| x.artist == self}
  end

  def genres
    songs.collect {|x| x.genre}
  end

end
