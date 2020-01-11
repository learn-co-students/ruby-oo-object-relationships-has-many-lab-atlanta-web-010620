class Author 
    attr_accessor :name 
    def initialize(name) 
        @name = name 
    end 

    # instance methods 
    def posts 
        Post.all.select {|post| post.author == self}
    end 

    def add_post(post) 
        post.author = self 
    end 

    def add_post_by_title(title) 
        new_post = Post.new(title)
        add_post(new_post)
    end 

    # class method 
    def self.post_count 
        Post.all.select{|post| post.author != nil}.length
    end

end 
