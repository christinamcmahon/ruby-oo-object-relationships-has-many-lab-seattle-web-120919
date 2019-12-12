class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post) 
        @posts.push(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts.push(post)
        post.author = self
    end

    def posts
        Post.all.find_all{|post| post.author == self} 
    end

    def self.post_count
        Post.all.count
    end
end