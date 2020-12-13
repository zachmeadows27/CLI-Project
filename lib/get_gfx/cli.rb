class GetGfx::CLI

    def call
      list_deals
      menu
    end
  
    def list_deals
      puts "Deals On Prebuilt Gaming Computers:"
      @deals =  GetGfx::Deal.today
      @deals.each.with_index(1) do |deal, i|
        puts "#{i}. #{deal.name}"
      end
    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the build you'd like, you'll be returned the price and link to the page on BestBuy.com. Use 'list' to return to the menu, and 'exit' to terminate this gem."
        input = gets.strip.downcase
  
        if input.to_i > 0
          the_deal = @deals[input.to_i-1]
          puts "#{the_deal.price} - #{the_deal.availability}"
        elsif input == "list"
          list_deals
        elsif input == "exit"
          goodbye
        else
          puts "Not sure what you want, type list or exit."
        end
      end
    end
  
    def goodbye
      puts "See you tomorrow for more deals!!!"
    end
  end