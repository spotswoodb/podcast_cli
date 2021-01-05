class Podcast
    @@all = []
    @@type = []

    attr_accessor :language, :genre, :title, :description

    def initialize(language, genre, title, description)
        @language = language
        @genre = genre
        @title = title
        @description = description
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.type
        @@type
    end

end

    
    