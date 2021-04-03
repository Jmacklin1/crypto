class Currency

attr_accessor :code, :rate, :description
 @@all = []

    def initialize(currency_array)           #(time, code, rate, description) 
   #binding.pry
    currency_array.each  {|key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")}
            #binding.pry
        end
        
    end

def save
    @@all << self
    #binding.pry
end
    def self.all
    @@all
    
end



