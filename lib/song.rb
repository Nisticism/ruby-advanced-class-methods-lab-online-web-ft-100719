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
    @@all << self 
  end
  
  def self.new_by_name(song)
  end

  def self.create_by_name(name)
    
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.all
  
  def self.find_or_create_by_name(name)
    
  end
  
  def self.new_from_filename
    
  end
  
  def self.create_from_filename
    
  end
  
  def self.destroy_all
    
  end

end
