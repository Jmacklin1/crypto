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
def self.find_by_selection(currency_code)
   
    self.all.detect  do |currency|
        #binding.pry
        currency.code.downcase == currency_code.downcase
    end

end

end



