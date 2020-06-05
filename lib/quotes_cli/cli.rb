class Cli


    def start 
        header 
        user_name
        thank_you_message
        sleep 1 
        Api.quotes_get
        original_screen
        ask_user_again
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
        puts "Company Ticker:  " + ticker.symbol
        puts "Sector:  " + ticker.sector 
        puts "Ask Price:  " + ticker.ask_price.to_s 
        puts "Bid Price:  " + ticker.bid_price.to_s 
        puts "Volume:  " + ticker.volume.to_s 
        puts "Last Sale Price:  " + ticker.lastSalePrice.to_s
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
        puts "Company Ticker:  " + ticker.symbol
        puts "Sector:  " + ticker.sector 
        puts "Ask Price:  " + ticker.ask_price.to_s 
        puts "Bid Price:  " + ticker.bid_price.to_s 
        puts "Volume:  " + ticker.volume.to_s 
        puts "Last Sale Price:  " + ticker.lastSalePrice.to_s
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
            ticker_number
            ticker_info(ticker_name)
        else 
            puts "Invalid entry try again" 
            input = gets.chomp.to_i
        end
    end  
        
        def ask_user_again
            puts " Do you want to make another selection: y/n?"
            input = gets.chomp.downcase
            if   input == "yes" || input == "y" 
              original_screen
              ask_user_again
            else
                exit 
            end 
            
        end
    
    def exit
        puts "We are sad to see you go; Goodbye!!"
        puts "-   -"
        puts "  |  "
        puts "-    -"
        puts " ----"
    end 

end


