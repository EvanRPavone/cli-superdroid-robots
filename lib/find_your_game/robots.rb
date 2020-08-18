# https://www.pcmag.com/news/the-best-pc-games
class SuperDroidRobots::Robots
    attr_accessor :name, :size, :url
  
    def self.all
      # returns a bunch of different genres
      self.scrape_robots
    end

    def self.scrape_robots
      robots = []
      robots << self.scrape_superdroid
      robots
    end

    def self.scrape_superdroid
      doc = Nokogiri::HTML(open("https://www.esquire.com/lifestyle/a30284795/best-video-games-2020/"))

      robot = self.new
      robot.name = doc.search("h3.body-h3").first.text
      robot.size = doc.search("div.standard-body").first.text
      robot
    end
  end
  
