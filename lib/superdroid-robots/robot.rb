class SuperDroidRobots::Robot
    attr_accessor :name, :price, :desc, :url

    @@all = []

    def initialize(name,price,desc,url)
        @name = name
        @price = price
        @desc = desc
        @url = url
        @@all << self
    end

    def self.all
        @@all
    end

end
