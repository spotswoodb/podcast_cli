class Category
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def podcasts
        Podcast.all.select do |podcast|
        podcast.category.name == self.name
        end
    end
    
end

    