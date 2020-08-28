
class SuperDroidRobots::Scraper
    attr_accessor :name, :desc, :availability, :url, :price, :category, :link
    def self.all
      self.scrape_category
      self.scrape_robots
    end

    def self.scrape_category
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/robots/74/"))
      doc.css("#ContentPlaceHolder1_subcategoryrepeater tr td").each do |row|
        category = row.css(".subcats a").text
        link = row.css(".subcats a").attr("href")
        if link != nil
          link = link.value
          SuperDroidRobots::Category.new(category,link)
        end
      end
    end

    def self.scrape_robots
      SuperDroidRobots::Category.all.each do |robot|
        doc = Nokogiri::HTML(open(robot.link))
        name = doc.search("div.listname").first.text
        desc = doc.search("div.listdesc").first.text
        price = doc.css(".listprice").first.text
        url = doc.search("div.listname a").first.attr("href")
        SuperDroidRobots::Robot.new(name, price, desc, url)
      end
    end
  end

  
