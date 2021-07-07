class Artist 
    attr_accessor :name, :songs 
    
    # class variables 
    @@all = []

    def initialize(name) 
        @name = name 
    end 

    # instance methods 
    def songs 
        Song.all.select {|song| song.artist==self}
    end
    
    def add_song(song_name) 
        song_name.artist = self
        @@all << song_name 
    end

    def add_song_by_name(song_name) 
        new_song = Song.new(song_name) 
        self.add_song(new_song)
    end 

    # class methods 
    def self.song_count
        Song.all.select {|song| song.artist != nil}.length
    end

end


