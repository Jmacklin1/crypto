class CLI
    def start
        puts "Welcome to Crypto, what is your name?"
        API.get_data
        input = user_input
        greet(input)
    end
    def user_input
        gets.strip
    end

    def greet(name)
        puts "Greetings #{name},
        would you like to check the price for Bitcoin? Select continue to continue or exit to exit"
        
        menu
    end
    def menu
        selection = user_input

        if selection.downcase == "continue"
            
            print_currencies
            
        elsif selection.downcase == "exit"
            goodbye
            
        else
            invalid
            menu 
            
            
        end
    end
    def goodbye
            puts "Thanks for stopping in, have a great day"
        end
    def invalid
            puts " Lets try that again somethings not looking right"
            
        end
    def print_currencies
           Currency.all.each.with_index(1) do |currency, index |
            
                puts "#{index}. #{currency.code}"
            
        end
        select_currencies
    end

    def select_currencies
        puts "Please enter the currency you would like to know the exchange rate for "
        selection = user_input
        if Currency.find_by_selection(selection)
            currency = Currency.find_by_selection(selection)
        else 
            currency = selection
           
        end

        
        currency_details(currency)
        
        
    end
    def currency_details(currency)
        
        
        if currency.class == Currency
            
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        
        puts "Name: #{currency.code}"
        puts "Description: #{currency.description}"
        puts "Rate: #{currency.rate}"
         
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        
        puts "Would you like to check the price of Bitcoin? Select continue to continue or exit to exit"
        menu
        elsif currency.class == String && currency.downcase == "exit" 
            goodbye
        else 
            invalid
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Would you like to check the price of Bitcoin? Select continue to continue or exit to exit"
        menu 
       
        end
        
    end
end

