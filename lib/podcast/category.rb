class Category
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def podcasts
        Podcast.all.select do |podcast|
        podcast.category.name == self
        end
    end
    #get rid of \n in description
    
end

    