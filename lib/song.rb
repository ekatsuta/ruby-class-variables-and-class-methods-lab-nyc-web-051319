class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genre_count
    count_hash = {}
    @@genres.each do |genre|
      if count_hash.has_key?(genre)
        count_hash[genre] += 1
      else
        count_hash[genre] = 1
      end
    end
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.each do |artist|
      if count_hash.has_key?(artist)
        count_hash[artist] += 1
      else
        count_hash[artist] = 1
      end
    end
    count_hash
  end


end
