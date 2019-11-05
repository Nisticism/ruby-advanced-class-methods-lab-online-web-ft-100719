class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    @@all << self.new
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    song_new = self.new
    song_new.name = name
    if find_by_name(name) == song_new
      return song_new
    else 
      @@all << song_new
    end
    
  end
  
  def self.alphabetical
    @@all.sort_by do |song_name|
      self.name
    end
  end
  
  def self.new_from_filename(filename)
    name_artist_ext = filename.split(".")
    songname_artist = name_artist_ext[0].split(" - ")
    song_artist = songname_artist[0]
    song_name = songname_artist[1]
    
    song = self.new
    song.name = song_name
    song.artist = song_artist
    song
    
  end
  
  def self.create_from_filename(filename)
    song = self.new_from_filename(filename)
    @@all << song
  end
  
  def self.destroy_all
    self.all.clear
  end

end
