class Podcast
    @@all = []

    attr_accessor :title, :description, :category

    def initialize(title, description, category)
        @title = title
        @description = description
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end
    
end

    