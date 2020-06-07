# class Cli


#     def start 
#         header 
#         user_name
#         thank_you_message
#         sleep 1 
#         Api.quotes_get
        
#         # original_screen
#         # ask_user_again
#     end 

#     def original_screen
#         selection_options
#         sleep 0.5 
#         making_selection_1
#     end 

#     ######################################################
#     def header 
#     puts "Welcome to Easy Quotes"
#     puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
#     sleep 0.5
#     puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
#     sleep 0.5
#     puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
#     sleep 0.5
#     puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
#     sleep 0.5
#     puts "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/"  "|" "/" "|" "/" 
#     sleep 0.5
#     end 

#     ######################################

#     # puts and gets methods 
#     ######################################
#     def user_name 
#         sleep 1
#         puts "Please Enter your name:"
#         user_name = gets.chomp(" ")
#     end 
    
#     def thank_you_message 
#         sleep 0.5
#         puts "Thank you."
#     end  

#     def ticker_number 
#         puts "Please choose the number for the ticker you wish to display:"
#     end 

#     def ticker_symbol 
#         puts "Please enter the ticker symbol to receive your quote:"
#     end 

#     def selection_options 
#         puts "Please make your selection for the options below:"
#         sleep 1 
#         puts "1. Make a selection from a list of tickers:"
#         sleep 1
#         puts "2. Please enter a ticker:" 
#     end 
#       ########################################

    
#     def print_all_tickers
#         data_filter
#     end 

#     #Option # 1 Methods
#     ############################################### 
#     def data_filter 
#         Quotes.all.each_with_index do |sym, index|
#         puts "#{index + 1 } #{sym.symbol}"
#         end 
#     end 

#     def ticker_list_selection
#         index = gets.chomp.to_i - 1 
#         last_ticker = Quotes.all.size - 1 

#         until index.between?(0,last_ticker)
#             puts "invalid, please choose again!"
#             index = gets.chomp.to_i - 1 
#         end 
#         ticker = Quotes.all[index]
#         puts "Company Ticker:  " + ticker.symbol
#         puts "Sector:  " + ticker.sector 
#         puts "Ask Price:  " + ticker.ask_price.to_s 
#         puts "Bid Price:  " + ticker.bid_price.to_s 
#         puts "Volume:  " + ticker.volume.to_s 
#         puts "Last Sale Price:  " + ticker.lastSalePrice.to_s
#     end 
#     ###########################################################


#     #Option # 2 Methods
#     ############################################################
#     def ticker_name
#         input = gets.strip
#         ticker = Quotes.all.find do |sym|
#         sym.symbol == input.upcase
#          end 
#     end  


#     def ticker_info(ticker)
#         puts "Company Ticker:  " + ticker.symbol
#         puts "Sector:  " + ticker.sector 
#         puts "Ask Price:  " + ticker.ask_price.to_s 
#         puts "Bid Price:  " + ticker.bid_price.to_s 
#         puts "Volume:  " + ticker.volume.to_s 
#         puts "Last Sale Price:  " + ticker.lastSalePrice.to_s
#     end 

#     def valid_ticker?
        
#         if Quotes.all.include? input
#             ticker_info(ticker_name)
#         else 
#             puts "invalid"
#             binding.pry
#             input = gets.chomp.to_s
#         end 
#     end 
#     #######################################################


#     #calling options 1 and 2 inside this method 
#     #######################################################
#     def making_selection_1
#         input = gets.chomp.to_i
#         if input == 1
#             data_filter
#             ticker_number
#             ticker_list_selection
#         elsif input == 2 
#             #this is working 
#             ticker_symbol 
#             # ticker_info(ticker_name)
#             valid_ticker?
#         else 
#             puts "Invalid entry try again" 
#             input = gets.chomp.to_i
#         end
#     end
    
#     ###################################################

#     #giving the user the option to choose again or to exit the program 
#     ##################################################################
#         def ask_user_again
#             puts " Do you want to make another selection: y/n?"
#             input = gets.chomp.downcase
#             if   input == "yes" || input == "y" 
#               original_screen
#               ask_user_again
#             else
#                 exit 
#             end 
            
#         end
#      ############################################################ 
     
#      #exit the program method and it is called in the method above 
#     #######################################################
#     def exit
#         puts "We are sad to see you go; Goodbye!!"
#         puts "-   -"
#         puts "  |  "
#         puts "-----"
#     end 
#     #######################################################

# end

#########################################################################################################
#the code above was working all week until late last night 06/06/2020;  the base URL was not responding 
#therefore I am starting from scratch the code below

#########################################################################################################



class Cli 
    
     def start 
        header 
        user_name
        thank_you_message
        sleep 1 
        Api.states_population_get
        give_user_choice
        original_screen
        
    end 

    def original_screen
        states_selection
        states_list_selection
        sleep 0.5
        ask_user_again
    end 

    def header 
            puts "Welcome to State Population 2018"
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

    # ######################################

#     # puts and gets methods 
#     ######################################
    def user_name 
        sleep 1
        puts "Please Enter your name:"
        input = gets.chomp(" ")
    end 

    def thank_you_message 
        sleep 0.5
        puts "Thank you!"
    end 

    def states_selection
        puts "Please make your selection by choosing a number of the state you wish to see its population:"
    end 

    ######################################

        #print method 

     ######################################

     def fifty_states
        Population.all.each_with_index do |data, index|
            list = puts "#{index + 1}. #{data.state}"
            list
        end 
    end 


    def print_list
        fifty_states
    end 

     ######################################

        #Program methods 

     ######################################

    def give_user_choice
        puts " Would you like to see a list of all states: y/n?"
            input = gets.chomp.downcase
           if  input == "yes" || input == "y"
            print_list
           else 
            exit1
            exit
           end   
    end 

    def states_list_selection
        index = gets.chomp.to_i - 1 
        last_state = Population.all.size - 1 
        
        until index.between?(0,last_state)
            puts "invalid, please choose again!"
            index = gets.chomp.to_i - 1 
        end 

        state = Population.all[index]
        
        puts "State: "  + state.state
        puts "Year: "  + state.year
        puts "Population: " + "" + state.population.to_s + " " + "people"
    end 

    def ask_user_again
        puts " Do you want to make another selection: y/n?"
        input = gets.chomp.downcase
            if   input == "yes" || input == "y" 
                print_list
                states_selection
                states_list_selection 
                ask_user_again
            else
                exit_prgram
                exit 
            end          
    end


     ######################################
        #Exit the program.
     ######################################


    def exit_prgram
        puts "We are sad to see you go; Goodbye!!"
        puts "-   -"
        puts "  |  "
        puts "-----"
    end 

    def exit1
        puts "oh noooo, please come back soon!"
    end 



end 

