class Author
    attr_accessor :name


    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end
     
    def posts
        Post.all.select {|posts| posts.author == self}
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def self.post_count
        Post.all.length
    end
end