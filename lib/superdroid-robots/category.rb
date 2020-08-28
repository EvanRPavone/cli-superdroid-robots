class SuperDroidRobots::Category
    attr_accessor :category, :link

    @@all = []

    def initialize(category, link)
        @category = category
        @link = link
        @@all << self
    end

    def self.all
        @@all
    end

end
