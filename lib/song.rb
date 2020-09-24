require "pry"
class Song
    attr_accessor :name, :artist
    @@all=[]
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.new_by_filename(filename)
        song_data = filename.split(" - ")
        song = Song.new(song_data[1])
        song.artist_name=(song_data[0])
        song.artist.add_song(song)
        song
    end

    def artist_name=(name)
       #binding.pry
        self.artist = Artist.find_or_create_by_name(name)
    end

end
    














    
    
    