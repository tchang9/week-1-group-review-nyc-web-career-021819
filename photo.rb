class Photo

    attr_accessor :user

    def initialize
        @user = nil
    end

    def comments
        Comment.all.select do |comment|
            comment.photo == self
        end
    end


    def make_comment(string_comment)
       new_comment = Comment.new(@user,self)
       new_comment.string_comment = string_comment
    end
        




end
