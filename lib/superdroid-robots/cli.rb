# CLI Controller
class SuperDroidRobots::CLI

    def call
      list_robots
      menu
      goodbye
    end
  
    def list_robots
      puts "Let's Take a Look at Superdroid Robots:"
      @robots = SuperDroidRobots::Robots.all
      @robots.each.with_index(1) do |robot, i|
        puts "#{i}. "
        puts " - #{robot.category} -".strip
        puts "#{robot.name}".strip
        puts "--------------"
      end

    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the robot to get more info or type list to see the robots again or type exit"
        input = gets.strip.downcase

        if input.to_i > 0
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
        elsif input == "list"
          list_robots
        else
          puts "Please put the number related to the robot or type exit."
        end

      end # Program will not end until you type exit.
    end
  
    def goodbye
      puts "Thank you for stopping by!"
    end
  
  end
