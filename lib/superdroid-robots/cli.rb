# CLI Controller
class SuperDroidRobots::CLI

    def call #calls the list of robots, waits for user input, shows menu, and waits for user to exit
      list_robots
      menu
      goodbye
    end
  
    def list_robots #lists out the robots by a numbered list with - to separate and make it look organized
      puts "Let's Take a Look at the new Superdroid Robots:".colorize(:light_blue) #this is the greeting
      @robots = SuperDroidRobots::Robots.all #pulls the robots from robots.rb and uses Nokogiri to scrape from the website and grab the names
      @robots.each.with_index(1) do |robot, i|
        puts "#{i}. ".colorize(:light_blue)
        puts " - #{robot.category} -".strip.colorize(:green) #pulls the category name for the robots from robots.rb
        puts "#{robot.name}".strip.colorize(:yellow) #pulls the robots name from the website and from robots.rb
        puts "--------------" #strip gets rid of the whitespace at the fron and at the end, will not remove white space in between words.
      end

    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the robot to get more info or type list to see the robots again or type exit".colorize(:light_blue)
        input = gets.strip.downcase

        if input.to_i > 0 #if I put a number 1-8 it will then give me information about the robot associated to the number
          the_robot = @robots[input.to_i-1]
          puts "#{the_robot.name}".strip.colorize(:yellow)
          puts " - "
          puts "#{the_robot.availability}".strip
          puts " - "
          puts "#{the_robot.price}".strip.colorize(:green)
          puts " - "
          puts "#{the_robot.desc}".strip.colorize(:yellow)
          puts " - "
          puts "#{the_robot.url}".strip.colorize(:light_blue)
          puts " - "
        elsif input == "list" #If I put list it will then give me the list of robots from list_robots again
          list_robots
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
