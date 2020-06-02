class Quotes 

    attr_reader :symbol, :sector, :ask_price, :bid_price, :lastSalePrice, :volume

    @@all = []


    def initialize(symbol, sector, ask_price, bid_price, lastSalePrice, volume)

        @symbol = symbol 
        @sector = sector
        @ask_price = ask_price
        @bid_price = bid_price
        @lastSalePrice =  lastSalePrice
        @volume = volume
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end