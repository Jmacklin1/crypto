class Currency

attr_accessor :time, :usd, :gbr, :eur, :rate
 @@all = []
def initialize(time, currency, rate)
    @time = time
    @currency = currency
    @rate = rate
    save
end

def save
    @all << self
end
def self.all
    @@all
end



    


end