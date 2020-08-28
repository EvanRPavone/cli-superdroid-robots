# CLI Controller
class SuperDroidRobots::CLI


    def call #calls the list of robots, waits for user input, shows menu, and waits for user to exit
      SuperDroidRobots::Scraper.scrape_category
      SuperDroidRobots::Scraper.scrape_robots
      list_category
      menu
      goodbye
    end
  
    def list_category #lists out the robots by a numbered list with - to separate and make it look organized
      puts "Let's Take a Look at the new Superdroid Robots:".colorize(:light_blue) #this is the greeting
      @categories = SuperDroidRobots::Category.all #pulls the robots from robots.rb and uses Nokogiri to scrape from the website and grab the names
      @categories.each.with_index(1) do |selection, i|
        puts "#{i}. #{selection.category}".colorize(:light_blue)
        puts "--------------"
      end
    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the robot to get more info or type list to see the robots again or type exit".colorize(:light_blue)
        input = gets.strip.downcase
        if input.to_i > 0 #if I put a number 1-8 it will then give me information about the robot associated to the number
          @robots = SuperDroidRobots::Robot.all
          the_robot = @robots[input.to_i-1]
          puts "#{the_robot.name}".strip.colorize(:yellow)
          puts " - "
          puts "#{the_robot.price}".strip.colorize(:green)
          puts " - "
          puts "#{the_robot.desc}".strip.colorize(:yellow)
          puts " - "
          puts "#{the_robot.url}".strip.colorize(:green)
          puts " - "
        elsif input == "list" #If I put list it will then give me the list of robots from list_robots again
          list_category
        elsif input == "exit"
          puts "I hope you found everything you were looking for!".colorize(:light_blue)
        else #if I put in a random input it will tell me to put a number associated to a robot, or put list, or exit
          puts "Did not understand. Please put the number related to the robot, type list to see the list again or type exit.".colorize(:red)
        end

      end # Program will not end until you type exit.
    end
  
    def goodbye
      puts "Thank you for stopping by!".colorize(:light_blue)
    end
  
  end
