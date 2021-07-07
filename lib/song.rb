class Song 
    attr_accessor :name, :artist 

    def initialize(name) 
        @name = name 
        @@all << self 
    end 

    # instance methods 
    def artist_name 
        if @artist == nil 
           nil 
        else 
            @artist.name 
        end
    end 

    # class variables 
    @@all = [] 

    # class methods 
    def self.all 
        @@all 
    end 

end