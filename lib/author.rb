class Author
    attr_accessor :name, :post 
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|posts| posts.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        new_post.author = self
    end

    def self.post_count
        Post.all.collect{|posts| posts}.length
    end 

end