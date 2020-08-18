# https://www.pcmag.com/news/the-best-pc-games
class SuperDroidRobots::Robots
    attr_accessor :name, :desc, :availability, :url, :price, :category
  
    def self.all
      # returns a bunch of different genres
      self.scrape_robots
    end

    def self.scrape_robots
      robots = []
      robots << self.scrape_autonomous
      robots << self.scrape_robotkits
      robots << self.scrape_inspection
      robots << self.scrape_specialized
      robots << self.scrape_prebuilt
      robots << self.scrape_programmable
      robots << self.scrape_wifi
      robots << self.scrape_arms
      robots
    end

    # Autonomous Robots Scrape Method

    def self.scrape_autonomous
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/autonomous-robots/210/"))
      #binding.pry

      robot = self.new
      robot.category = "Autonomous Robots" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Robot Kits Scrape Method

    def self.scrape_robotkits
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/robot-kits/195/"))
      #binding.pry

      robot = self.new
      robot.category = "Robot Kits" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Inspection Robots Scrape Method

    def self.scrape_inspection
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/inspection-robots/187/"))
      #binding.pry

      robot = self.new
      robot.category = "Inspection Robots" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Specialized Robots Scrape Method

    def self.scrape_specialized
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/specialized-robots/193/"))
      #binding.pry

      robot = self.new
      robot.category = "Specialized Robots" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Prebuilt Custom Robots Scrape Method

    def self.scrape_prebuilt
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/prebuilt-custom-robots/72/"))
      #binding.pry

      robot = self.new
      robot.category = "Prebuilt Custom Robots" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Programmable Robots Scrape Method

    def self.scrape_programmable
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/programmable-robots/194/"))
      #binding.pry

      robot = self.new
      robot.category = "Programmable Robots" 
      robot.name = doc.search("div.subcats").first.text
      robot.desc = doc.search("div.catdesc").first.text
      robot.url = doc.search("div.subcats a").first.attr("href")
      robot
    end

    # WiFi Robots Scrape Method

    def self.scrape_wifi
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/wifi-robots/90/"))
      #binding.pry

      robot = self.new
      robot.category = "WiFi Robots" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end

    # Robot Arms Scrape Method

    def self.scrape_arms
      doc = Nokogiri::HTML(open("https://www.superdroidrobots.com/shop/category.aspx/robot-arms/186/"))
      #binding.pry

      robot = self.new
      robot.category = "Robot Arms" 
      robot.name = doc.search("div.listname").first.text
      robot.desc = doc.search("div.listdesc").first.text
      robot.availability = doc.search("#ContentPlaceHolder1_columnrepeater div.messages").first.text
      robot.price = doc.search("#ContentPlaceHolder1_columnrepeater div.listprice").first.text
      robot.url = doc.search("div.listname a").first.attr("href")
      robot
    end
  end
  
