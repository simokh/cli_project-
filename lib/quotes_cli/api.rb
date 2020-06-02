class Api 

    # QUOTES_URL = "https://cloud.iexapis.com/beta?token="
    QUOTES_URL = "https://cloud.iexapis.com/stable/tops?token="
    KEY = ENV['API_KEY']
    

    def self.quotes_get
        #requesting a response from the URL attached and setting = to a variable 
        res = RestClient.get("#{QUOTES_URL}#{KEY}") 
        #parsing the response by using the gem json and setting = to a variable 
        data = JSON.parse(res.body)
        
            #beta data 
            # data["components"]["schemas"]["priceData"]["properties"].each do |key, value|
           
            #stock quotes data 
            data.each do |data_type|


                symbol = data_type["symbol"]
                sector = data_type["sector"]
                ask_price = data_type["askPrice"]
                bid_price = data_type['bidPrice']
                lastSalePrice = data_type["lastSalePrice"]
                volume = data_type["volume"]
                Quotes.new(symbol, sector, ask_price, bid_price, lastSalePrice, volume)
            end 
    end  
end