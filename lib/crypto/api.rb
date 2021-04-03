class API
    
    def self.get_data 
        response = RestClient.get("https://api.coindesk.com/v1/bpi/currentprice.json")
        currency_array = JSON.parse(response)["bpi"]
        currency_array.each do |currency|
            Currency.new(currency)
            #binding.pry
        end
    end

end
          
    

