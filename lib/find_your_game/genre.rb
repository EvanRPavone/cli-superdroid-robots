class FindYourGame::Genre
    attr_accessor :name, :game, :price, :url
  
    def self.all
      # returns a bunch of different genres
    #   puts <<-DOC
    #   1. Action
    #   2. Action-Adventure
    #   3. Battle Royale
    #   4. Role-playing
    #   5. Simulation
    #   6. Strategy
    #   7. Sports
    #   DOC
      genre_1 = self.new
      genre_1.name = "Action"
      genre_1.game = "Red Dead Redemption 2"
      genre_1.price = "$59.99"
      genre_1.url = "https://www.pcmag.com/reviews/red-dead-redemption-2-for-pc"
  
      genre_2 = self.new
      genre_2.name = "Action-Adventure"
      genre_2.game = "Heavy Rain"
      genre_2.price = "$19.99"
      genre_2.url = "https://www.pcmag.com/reviews/heavy-rain-for-pc"
  
      genre_3 = self.new
      genre_3.name = "Battle Royale"
      genre_3.game = "Call of Duty: Warzone"
      genre_3.price = "Free"
      genre_3.url = "https://www.pcmag.com/reviews/call-of-duty-warzone-for-pc"
  
      [genre_1, genre_2, genre_3]
    end
  end
  