# class Quotes 

#     attr_reader :symbol, :sector, :ask_price, :bid_price, :lastSalePrice, :volume

#     @@all = []


#     def initialize(symbol, sector, ask_price, bid_price, lastSalePrice, volume)

#         @symbol = symbol 
#         @sector = sector
#         @ask_price = ask_price
#         @bid_price = bid_price
#         @lastSalePrice =  lastSalePrice
#         @volume = volume
#         @@all << self 
#     end 

#     def self.all 
#         @@all 
#     end 

# end


#########################################################################################################
#the code above was working all week until late last night;  the base URL was not responding 
#therefore I am starting from scratch the code below

#########################################################################################################





class Population

    attr_reader :state, :year, :population 

    @@all = []
    def initialize(state, year, population)
        @state = state
        @year = year 
        @population = population
        @@all << self 
    end 

    def self.all 
        @@all
    end 
end 