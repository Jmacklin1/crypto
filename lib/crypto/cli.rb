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
        puts "Greeting #{name}
        would you like to check the price of our Cryptos? Select y to continue or exit to exit"
        menu
    end
    def menu
        selection = user_input
        # enter y print out a list of currencies to choose
        #enter exit = exit
        # else invalid
        #binding.pry
        if selection == "y"
            #continue
            print_currencies
            menu
            # binding.pry
        elsif selection == "exit"
            goodbye
            #exit
        else
            invalid
            menu 
            #invalid
            
        end
    end
    def goodbye
            puts "Thanks for stopping in, have a great day"
        end
    def invalid
            puts " Lets try that again somethings not looking right"
            menu
        end
    def print_currencies
           Currency.all.each.with_index(1) do |currency, index |
            #binding.pry 
                puts "#{index}. #{currency.code}"
            #binding.pry
        end
        select_currencies
    end

    def select_currencies
        puts "please enter the currency you would to learn the crypto exchange for "
        selection = user_input
        currency = Currency.find_by_selection(selection)
        puts "input y to see a list or exit to leave"
        currency_details(currency)
        #puts "urrency rate"
        
    end
    def currency_details(currency)
        puts "Name: #{currency.code}"
        puts "Description: #{currency.description}"
        puts "Rate: #{currency.rate}"
        menu 
        
    end
end

