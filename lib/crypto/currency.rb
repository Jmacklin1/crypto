class Currency

attr_accessor :code, :rate, :description
 @@all = []

    def initialize(currency_array)          
   
    currency_array[1].each  {|key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")}
            
        
        save
    end

def save
    @@all << self
 
end
    def self.all
    @@all
    
end
def self.find_by_selection(currency_code)
   
    self.all.detect  do |currency|
     
        currency.code.downcase == currency_code.downcase
    end

end

end



