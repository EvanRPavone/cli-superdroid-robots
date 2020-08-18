# CLI Controller
class SuperDroidRobots::CLI

    def call
      list_robots
      menu
      goodbye
    end
  
    def list_robots
      puts "Let's Take a Look at Superdroid Robots:"
      @robots = SuperDroidRobots::Game.all
      @robots.each.with_index(1) do |robot, i|
        puts "#{i}. #{robot.name}"
      end

    end
  
    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the robot to get more info or type list to see the robots again or type exit"
        input = gets.strip.downcase

        if input.to_i > 0
          the_robot = @robots[input.to_i-1]
          puts "#{the_robot.name} - #{the_robot.size} -"
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
