class Cli


    def start 
        # header 
        # user_name
        # thank_you_message
        # sleep 1 
        Api.quotes_get
        # data_filter
        selection_data(user_input) 
        # test 
    end 

    def original_screen 
        # print_all
        # user_entry
        # valid_entry?
        user_input
        data_filter(user_input) 
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

    def user_input
        gets.chomp
    end 

        
    def print_all_tickers
        data_filter
    end 

  

    def data_filter 
        Quotes.all.each_with_index do |sym, index|
        puts "#{index + 1 } #{sym.symbol}"
        end 
    end 


    def selection_data(user_input)
        Quotes.all.find do |sym|
        if sym.symbol == user_input.upcase
            sym.symbol
            end 
        end 
    end  

    def test 
        user_input
    end 




    # def stock_quotes 
    #     puts "1. Stock Quotes"
    # end 

    # def financials 
    #     puts "2. Financials"
    # end 

    

    # def stock_quotes_prompt
    #     if make_selection == 1  
    #     puts "Please enter a ticker:" 
    #     else 
    #         puts "I am happy for you"  
    #     end
    #     user_input = gets.chomp.to_s
    #     if user_input = @symbol 
    #         "i like it"
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


