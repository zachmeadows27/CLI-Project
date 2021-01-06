class GetGfx::CLI

  attr_reader :deals

    def call
      list_deals
      menu
    end
  
    def list_deals
      puts "Prebuilt Gaming Computers:" 
      GetGfx::Scrape.today if  GetGfx::Deal.all.length == 0

      @deals ||= GetGfx::Deal.all
      deals.each.with_index(1) do |deal, i|
        puts "#{i}. #{deal.name}"
      end
    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the build you'd like, you'll be returned the price and specifications of said build. Use 'list' to return to the menu, and 'exit' to terminate this gem."
        input = gets.strip.downcase
  
        if input.to_i > 0 && input.to_i <= deals.length
          the_deal = deals[input.to_i-1]
          puts "#{the_deal.price} - #{the_deal.specs}"
        elsif input == "list"
          list_deals
        elsif input == "exit"
          goodbye
          exit
        else
          puts "Wrong input - type list, exit, or enter a correct value"
          menu
        end
      end
    end
  
    def goodbye
      puts "See you tomorrow for more deals!!!"
    end
  end