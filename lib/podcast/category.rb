class Category
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self # self.class.all = @@all
        #instance.class => Category : return the class for my instance(self)
        # instance.class.all => Category.all: returning class variable @@all
    end

    def self.all
        self 
        @@all
    end

    def podcasts # podcasts belong to category, a category has many podcasts
        Podcast.all.select do |podcast|
        podcast.category.name == self.name #self.name = politics
        end
    end
    
end

    