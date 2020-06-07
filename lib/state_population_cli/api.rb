# class Api 

#         # QUOTES_URL = "https://cloud.iexapis.com/beta?token="
#         QUOTES_URL = "https://cloud.iexapis.com/stable/tops?token="
#         KEY = ENV['KEY']
        
    
#         def self.quotes_get
#             #requesting a response from the URL attached and setting = to a variable 
#             res = RestClient.get("#{QUOTES_URL}#{KEY}") 
#             #parsing the response by using the gem json and setting = to a variable 
#             data = JSON.parse(res.body)
#             binding.pry 
            
#                 #beta data 
#                 # data["components"]["schemas"]["priceData"]["properties"].each do |key, value|
               
#                 #stock quotes data 
#                 data.each do |data_type|
    
    
#                     symbol = data_type["symbol"]
#                     sector = data_type["sector"]
#                     ask_price = data_type["askPrice"]
#                     bid_price = data_type['bidPrice']
#                     lastSalePrice = data_type["lastSalePrice"]
#                     volume = data_type["volume"]
#                     Quotes.new(symbol, sector, ask_price, bid_price, lastSalePrice, volume)
#                 end 
#         end  
#     end
    



#########################################################################################################
#the code above was working all week until late last night;  the base URL was not responding 
#therefore I am starting from scratch the code below

#########################################################################################################


class Api 
    

    BASE_URL = 'https://datausa.io/api/data?drilldowns=State&measures=Population&year=latest'

    def self.states_population_get

        res = RestClient.get("#{BASE_URL}")
        data = JSON.parse(res.body)


        data["data"].each do |data|
            year = data["Year"]
            population = data["Population"]
            state = data["State"]
            # binding.pry
            
            Population.new(state, year, population)
        end 
    end
end 