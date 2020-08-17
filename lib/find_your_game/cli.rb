# CLI Controller
class FindYourGame::CLI

    def call
      list_genres
      menu
      goodbye
    end
  
    def list_genres
      puts "Let's Find Your Game:"
      @genres = FindYourGame::Genre.all
    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the genre to get a list of games in that genre or list to see the genres again or type exit"
        input = gets.strip.downcase
        case input
        when "0"
          puts "The best game to get started on is Minecraft. It gets you an understanding on how videogames work. It is also very fun to play with friends or by yourself."
        when "1"
          puts "Lists out the games based on genre 1"
        when "2"
          puts "Lists out the games based on genre 2"
        when "list"
          list_genres
        else
          puts "Please put the number related to the genre, if you are a new gamer put 0"
        end
      end # Program will not end until you type exit.
    end
  
    def goodbye
      puts "Start gaming, Gamer!"
    end
  
  end