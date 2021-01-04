class WorldsBestRestaurants::Scraper

    def get_page
      Nokogiri::HTML(open("https://www.ginosfayettevilleny.com/menu"))
    end
  
    def scrape_sandwich_index
       self.get_page.css("div[data-list='1-50'] a.item")
    end
  
    def make_restaurants
      scrape_restaurants_index.each do |r|
        WorldsBestRestaurants::Restaurant.new_from_index_page(r)
      end
    end
  end