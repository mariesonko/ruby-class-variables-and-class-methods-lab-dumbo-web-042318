require 'pry'

class Song
  @@count =0
  @@genres =[]
  @@artists =[]
  @@genres_hash = Hash.new(0)
  @@artists_hash = Hash.new(0)

  attr_accessor :name, :artist, :genre

  def initialize(name, artist,genre)
  #  binding.pry
    @name= name
    @artist= artist
    @genre=genre
    @@genres<< genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.each do |genre|
      @@artists_hash[genre] += 1
    end
    @@artists_hash
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genres_hash[genre] +=1
    end
    @@genres_hash
  end
end
# binding.pry

#true
