class Currency

attr_accessor :code, :rate, :description
 @@all = []
 
    def initialize(currency_array)           #(time, code, rate, description) 
   #binding.pry
    currency_array.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
            #binding.pry
        end
    binding.pry
    #@time = time
    #@currency = currency
    #@rate = rate
    #@desription = description
            save
    end

    def save
    @all << self
end
    def self.all
    @@all
end

end
