class GetGfx::Deal
    # self.attr_accessor(:name)
    attr_accessor :name, :price, :specs, :url

    @@all = []

    def initialize(name, price, specs, url)
        self.name = name
        self.price = price
        self.specs = specs
        self.url = url
        self.class.all << self
    end

    def self.all
        @@all 
    end

end