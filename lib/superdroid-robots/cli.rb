# CLI Controller
class SuperDroidRobots::CLI

    def call #calls the list of robots, waits for user input, shows menu, and waits for user to exit
      list_robots
      menu
      goodbye
    end
  
    def list_robots #lists out the robots by a numbered list with - to separate and make it look organized
      puts "Let's Take a Look at the new Superdroid Robots:" #this is the greeting
      @robots = SuperDroidRobots::Robots.all #pulls the robots from robots.rb and uses Nokogiri to scrape from the website and grab the names
      @robots.each.with_index(1) do |robot, i|
        puts "#{i}. "
        puts " - #{robot.category} -".strip #pulls the category name for the robots from robots.rb
        puts "#{robot.name}".strip #pulls the robots name from the website and from robots.rb
        puts "--------------" #strip gets rid of the whitespace at the fron and at the end, will not remove white space in between words.
      end

    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the robot to get more info or type list to see the robots again or type exit"
        input = gets.strip.downcase

        if input.to_i > 0 #if I put a number 1-8 it will then give me information about the robot associated to the number
          the_robot = @robots[input.to_i-1]
          puts "#{the_robot.name}".strip
          puts " - "
          puts "#{the_robot.availability}".strip
          puts " - "
          puts "#{the_robot.price}".strip
          puts " - "
          puts "#{the_robot.desc}".strip
          puts " - "
          puts "#{the_robot.url}".strip
          puts " - "
        elsif input == "list" #If I put list it will then give me the list of robots from list_robots again
          list_robots
        else #if I put in a random input it will tell me to put a number associated to a robot, or put list, or exit
          puts "Did not understand. Please put the number related to the robot, type list to see the list again or type exit."
        end

      end # Program will not end until you type exit.
    end
  
    def goodbye
      puts "Thank you for stopping by!"
    end
  
  end
