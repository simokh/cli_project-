class Api 

    QUOTES_URL = "https://cloud.iexapis.com/stable/stock/aapl/quote?token="
    KEY = ENV['API_KEY']

    def self.quotes_get
        #requesting a response from the URL attached and setting = to a variable 
        res = RestClient.get("#{QUOTES_URL}#{KEY}") 
        #parsing the response by using the gem json and setting = to a variable 
        data = JSON.parse(res.body)
        

        data.each do |data, value| 
            # puts data
            if value == nil  
                puts "unknown"
            else 
                puts value  
            end
        end 
    end  
end