# CLI Controller
class FindYourGame::CLI

    def call
      list_games
      menu
      goodbye
    end
  
    def list_games
      puts "Let's Find Your Game:"
      @games = FindYourGame::Game.all
      @games.each.with_index(1) do |game, i|
        puts "#{i}. #{game.name}"
      end

    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the game to get more info or type list to see the games again or type exit"
        input = gets.strip.downcase

        if input.to_i > 0
          the_game = @games[input.to_i-1]
          puts "#{the_game.name} - #{the_game.platform} -"
        elsif input == "list"
          list_games
        else
          puts "Please put the number related to the game or type exit. If you are a new gamer put 0"
        end

      end # Program will not end until you type exit.
    end
  
    def goodbye
      puts "Start gaming, Gamer!"
    end
  
  end