class API
    
    def self.get_data 
        response = RestClient.get("https://api.coindesk.com/v1/bpi/currentprice.json")
        currency_array = JSON.parse(response)["results"]
        currency_array.each do |currency|
            Currency.new(currency)
        end


            binding.pry
    end

end