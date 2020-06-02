class Api 

    QUOTES_URL = "https://cloud.iexapis.com/beta?token="
    KEY = ENV['API_KEY']

    def self.quotes_get
        #requesting a response from the URL attached and setting = to a variable 
        res = RestClient.get("#{QUOTES_URL}#{KEY}") 
        #parsing the response by using the gem json and setting = to a variable 
        data = JSON.parse(res.body)
        

            data["components"]["schemas"]["priceData"].each do |key, value| 
           
                Quotes.new(key, value)
                
                #     self.each do |quotes_variables, num|
                #     puts quotes_variables
                #     puts num
                #     end 
           
            end 
    end  
end