class Cli


    def start 
        header 
        user_name
        thank_you_message
        sleep 1 
        Api.quotes_get
        ticker_info(ticker_name)
        # puts "Take a look at our list of tickers:"
        # sleep 1 
        # original_screen
    end 

    def original_screen 
        # print_all_tickers
        # ticker_number
        # ticker_list_selection
    end 

    def header 
    puts "Welcome to Easy Quotes"

    
    # puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    # sleep 0.5
    # puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    # sleep 0.5
    # puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    # sleep 0.5
    # puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    # sleep 0.5
    # puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
    # sleep 0.5
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

    # def make_selection
    #     puts "Please make a selection from the list below:"
    #     # stock_quotes
    #     # financials
    # end 


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
        puts ticker.volume 
    end 




    def selection_options 
        puts "1. Make a selection from a list of tickers:"
        puts "2. Please enter a ticker:"
        input = gets.chomp.to_i
        unless input.between?(0,1)
            puts "invalid"
        end 
        if input == 1 
            data_filter 
        else 
            ticker_name
        end 
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


