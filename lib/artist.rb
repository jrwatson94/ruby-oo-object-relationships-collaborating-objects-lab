class Artist
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all 
        @@all 
    end

    def songs
        songs = [] 
        Song.all.each {|song| songs << song if song.artist == self}
        songs
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(artist_name)
        found_artist = self.all.find {|artist| artist.name == artist_name}
        if found_artist
          found_artist
        else
          new_artist = self.new(artist_name)
          new_artist
        end
    end

    def print_songs
        self.songs.each do |song|
          puts song.name
        end  
    end

end
