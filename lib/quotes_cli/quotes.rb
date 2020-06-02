class Quotes 

    attr_reader :key, :value 
    @@all = []

    def initialize(key, value)
        @key = key
        @value = value 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def print_key 
        puts @key
    end 

    
end