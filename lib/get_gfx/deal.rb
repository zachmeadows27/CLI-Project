class GetGfx::Deal
    attr_accessor :name, :price, :availability, :url

    def self.today

        self.scrape_deals
    end

    def self.scrape_deals
        deals = []
        deals << self.scrape_bestbuy
        deals << self.scrape_bestbuy1
        deals << self.scrape_bestbuy2
        deals

    end

    def self.scrape_bestbuy
        doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/ibuypower-gaming-desktop-intel-i5-10400f-8gb-memory-nvidia-geforce-gtx-1650-super-4gb-240gb-ssd-1tb-hdd/6428883.p?skuId=6428883"))
        deal = self.new
        deal.name = doc.search("div.sku-title").text
        deal.price = doc.search("div.priceView-hero-price.priceView-customer-price").text[0..6]
        deal.availability = "https://bit.ly/37QeRWM"
        deal   

    end

    def self.scrape_bestbuy1
        doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/cyberpowerpc-gamer-xtreme-gaming-desktop-intel-core-i7-10700f-16gb-memory-nvidia-geforce-rtx-2060-super-1tb-hdd-500gb-ssd-black/6430870.p?skuId=6430870"))
        deal = self.new
        deal.name = doc.search("div.sku-title").text
        deal.price = doc.search("div.priceView-hero-price.priceView-customer-price").text[0..8]
        deal.availability = "https://bit.ly/2W4r5Wn"
        deal
    end

    def self.scrape_bestbuy2
        doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/asus-rog-gaming-desktop-intel-core-i7-9700k-16gb-memory-nvidia-geforce-rtx-2080-super-2tb-hdd-512gb-ssd-black/6401068.p?skuId=6401068"))
        deal = self.new
        deal.name = doc.search("div.sku-title").text
        deal.price = doc.search("div.priceView-hero-price.priceView-customer-price").text[0..8]
        deal.availability = "https://bit.ly/3gM50FC"
        deal
    end
end