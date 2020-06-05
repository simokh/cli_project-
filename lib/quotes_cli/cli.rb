class Cli


    def start 
        header 
        user_name
        thank_you_message
        sleep 1 
        Api.quotes_get
        original_screen
    end 

    def original_screen
        selection_options
        sleep 0.5 
        making_selection_1
    end 

    def header 
    puts "Welcome to Easy Quotes"

    
    puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    sleep 0.5
    puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    sleep 0.5
    puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    sleep 0.5
    puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    sleep 0.5
    puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    sleep 0.5
    end 

    def user_name 
        sleep 1
        puts "Please Enter your name:"
        user_name = gets.chomp(" ")
    end 
    
    def thank_you_message 
        sleep 0.5
        puts "Thank you."
    end  


    def ticker_number 
        puts "Please choose a number for the ticker you wish to display:"
    end 
        
    def print_all_tickers
        data_filter
    end 

    def data_filter 
        Quotes.all.each_with_index do |sym, index|
        puts "#{index + 1 } #{sym.symbol}"
        end 
    end 

    def ticker_list_selection
        index = gets.chomp.to_i - 1 
        last_ticker = Quotes.all.size - 1 

        until index.between?(0,last_ticker)
            puts "invalid, please choose again!"
            index = gets.chomp.to_i - 1 
        end 
        ticker = Quotes.all[index]
            puts ticker.symbol
            puts ticker.sector 
            puts ticker.ask_price 
            puts ticker.bid_price 
            puts ticker.volume 
            puts ticker.lastSalePrice
    end 

     

    # def select_a_ticker_by_number 
    #     index = gets.chomp.to_i - 1 
    # end 


    def ticker_name
        input = gets.strip
        ticker = Quotes.all.find do |sym|
        sym.symbol == input.upcase
        end 
    end  


    def ticker_info(ticker)
        puts ticker.sector 
        puts ticker.ask_price 
        puts ticker.bid_price 
        puts ticker.volume 
        puts ticker.lastSalePrice
    end 

    def selection_options 
        puts "Please make your selection for the options below:"
        sleep 0.5 
        puts "1. Make a selection from a list of tickers:"
        sleep 0.5
        puts "2. Please enter a ticker:" 
    end 

    def making_selection_1
        input = gets.chomp.to_i 
        if input == 1
            data_filter
            ticker_list_selection
        elsif input == 2 
            #this is working 
            puts "Please the stock ticker you wish to display:"
            ticker_info(ticker_name)
        else 
            puts "invalid" 
        end  

        # def valid_entry?(input)
        #     input.between?(1,2)
        # end 
    end 
    



    

    # def stock_quotes_prompt
    #     if selection_options == 1  
    #         data_filter    
    #     elsif  
    #         selection_options == 2
    #         ticker_name
    #     else
    #         "invalid entry. Please try again!"
    #     end 

    # end 

















    # def continue 
    #     puts "Do you want to continue: y/n?"
    #     user_input = gets.chomp
    #     if  user_input == "y"    
    #         self.make_selection
    #     else  
    #         self.exit
    #     end 
    # end

    def exit
        puts "Goodbye"
        puts "-   -"
        puts "  |  "
        puts "-    -"
        puts " ----"
    end 

end


