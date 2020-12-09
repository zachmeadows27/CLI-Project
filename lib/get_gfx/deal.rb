class GetGfx::Deal
    attr_accessor :name, :price, :availability, :url

    def self.today

        deal_1 = self.new
        deal_1.name = "GTX 3070"
        deal_1.price = "$500"
        deal_1.availability = true
        deal_1.url = "https://microcenter.com/"
        
        deal_2 = self.new
        deal_2.name = "RX 590 Red Devil"
        deal_2.price = "$220"
        deal_2.availability = true
        deal_2.url = "https://microcenter.com/"

        [deal_1, deal_2]

    end
   
   

end