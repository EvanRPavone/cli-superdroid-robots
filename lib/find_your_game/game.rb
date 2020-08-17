# https://www.pcmag.com/news/the-best-pc-games
class FindYourGame::Game
    attr_accessor :name, :platform, :url
  
    def self.all
      # returns a bunch of different genres
      self.scrape_games
    end

    def self.scrape_games
      games = []
      games << self.scrape_esquire
      games
    end

    def self.scrape_esquire
      doc = Nokogiri::HTML(open("https://www.esquire.com/lifestyle/a30284795/best-video-games-2020/"))

      game = self.new
      game.name = doc.search("h3.body-h3").first.text
      game.platform = doc.search("div.standard-body").first.text
      game
    end
  end
  