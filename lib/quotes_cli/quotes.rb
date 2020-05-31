class Quotes 

    attr_reader :data, :value 
    @@all = []

    def initialize(data, value)
        @data = data 
        @value = value 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    
end