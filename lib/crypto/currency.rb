class Currency

attr_accessor :code, :rate, :description
 @@all = []

    def initialize(currency_array)           #(time, code, rate, description) 
   #binding.pry
    currency_array[1].each  {|key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")}
            #binding.pry
        #end
        save
    end

def save
    @@all << self
    #binding.pry
end
    def self.all
    @@all
    
end

end



