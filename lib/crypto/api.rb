class API
    
    def self.get_data 
        response = RestClient.get("https://api.coindesk.com/v1/bpi/currentprice.json")
        currency_array = JSON.parse(response)["bpi"]
        #binding.pry
        currency_array.each {|currency| Currency.new(currency)}
        #binding.pry
    end

end
    
    

