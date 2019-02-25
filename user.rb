class User 

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def comments
        Comment.all.select do |comment|
            comment.user == self
        end
    end

    def photos
        self.comments.map do |comment|
            comment.photo
        end
    end



end