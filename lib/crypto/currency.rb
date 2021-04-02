class Currency

attr_accessor :time, :code, :rate, :description
 @@all = []
def initialize(curency_hash)  #(time, code, rate, description)
    currency_hash.each do |key, value|
        self.send("#{key}=", value)
        if self.respond_to?("#key)=")
    end
    
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
end