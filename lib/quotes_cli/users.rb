class Users 

    attr_reader :user_name 

    @@all = []

    def initialize(Cli.user_name)
        @user_name = user_name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end