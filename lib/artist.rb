class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def add_song(song)
    song.artist = self
  end

  def add_songs(songs)
    songs.each{|song|add_song(song)}
  end

  def songs
    Song.all.find_all{|song|song.artist == self}
  end

end
