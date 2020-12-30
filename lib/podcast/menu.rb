class Podcast::Menu

    def start
        podcast_menu
    end

    def podcast_menu
        puts "What language do you want to find podcasts in?"
        puts "1. English"
        puts "2. Spanish"
        puts "3. French"
        puts "4. Exit"
        puts "Pick a number"
        number = gets.strip
        case number
        when "1"
            english_genres
        when "2"
            spanish_genres
        when "3"
            french_genres
        when "4"
            puts "Go listen to music!"
        end
    end

    def english_genres
        puts "You asked for English genres"
        podcast_menu
    end

    def spanish_genres
        puts "You asked for Spanish genres"
        podcast_menu
    end

    def french_genres
        puts "You asked for French genres"
        podcast_menu
    end
end
