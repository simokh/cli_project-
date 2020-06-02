class Cli


    def run 
        header 
        user_name
        thank_you_message
        sleep 1 
        make_selection
        Api.quotes_get
        # continue
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

    sleep 1

    def make_selection 
    puts "please make a selection from the list below:"
        #valid_entry? 
    user_entry = gets.chomp.to_i
        while  user_entry < 1 || user_entry > 2 
            puts "invalid entry. Please try again!" 
            user_entry = gets.chomp.to_i  
        end 
    end


    def continue 
        puts "Do you want to continue: y/n?"
        user_input = gets.chomp
        if  user_input == "y"    
            self.make_selection
        else  
            self.exit
        end 
      end


    def exit
        puts "Goodbye"
        puts "-   -"
        puts "  |  "
        puts "-    -"
        puts " ----"
    end 

end


