class Comment

    @@all = []

    attr_accessor :user, :photo, :string_comment

    def initialize(user, photo)
        @user = user
        @photo = photo
        @@all << self
    end

    def self.all
        @@all
    end



end
