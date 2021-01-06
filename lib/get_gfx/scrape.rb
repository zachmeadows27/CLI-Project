
class GetGfx::Scrape

    BASE_URL = "https://www.bestbuy.com"
    

    def self.today

        self.scrape_bestbuy
    end

    #def self.scrape_deals
        #deals = []
        #deals << self.scrape_bestbuy
        #deals

    #end

    def self.scrape_bestbuy
        doc = Nokogiri::HTML(URI.open("https://www.bestbuy.com/site/pc-gaming/gaming-desktops/pcmcat287600050002.c?id=pcmcat287600050002"))
        doc.search("ol.sku-item-list li").each do |item| 
            name = item.search("div.sku-title h4 a").text.split(" - ").first
            price = item.at('div.priceView-hero-price.priceView-customer-price span[aria-hidden="true"]').text if item.at('div.priceView-hero-price.priceView-customer-price span[aria-hidden="true"]')
            specs = item.search("div.sku-title h4 a").text.gsub(/#{name}/,"").delete_prefix(" - ") if item.search("div.sku-title h4 a")
            url = BASE_URL + item.search("div.sku-title h4 a").attr("href").value if item.search("div.sku-title h4 a").attr("href")
            GetGfx::Deal.new(name,price,specs,url) if (name!=nil && price!=nil && specs!=nil && url!=nil)
        end
        

    end

   
end