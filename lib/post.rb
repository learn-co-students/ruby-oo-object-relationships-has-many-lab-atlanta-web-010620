class Post 
    attr_accessor :title, :author
    # class variables 
    @@all = []

    # instance methods  
    def initialize(title) 
        @title = title 
        @@all << self 
    end 

    def author_name 
        if @author 
            @author.name 
        else 
            nil 
        end 
    end 



    # class methods 
    def self.all 
        @@all 
    end 

end 