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
        genre_menu
    end

    def spanish_genres
        puts "You asked for Spanish genres"
        genre_menu
    end

    def french_genres
        puts "You asked for French genres"
        genre_menu
    end

    def genre_menu
        puts "Which genre are you interested in?"
        puts "1. Business"
        puts "2. Comedy"
        puts "3. News"
        puts "4. Exit"
        puts "Pick a number"
        number = gets.strip
        case number
        when "1"
            business_podcasts
        when "2"
            comedy_podcasts
        when "3"
            news_podcasts
        when "4"
            puts "Go listen to music!"
        end
    end

    def business_podcasts
        puts "You asked for Business podcasts"
        business_menu
    end

    def comedy_podcasts
        puts "You asked for Comedy podcasts"
        comedy_menu
    end

    def news_podcasts
        puts "You asked for News podcasts"
        news_menu
    end

    def business_menu
        puts "Which title are you interested in?"
        puts "1. Joe Rogan"
        puts "2. Tim Ferriss"
        puts "3. Daniel Cleland"
        puts "4. Exit"
        puts "Pick a number"
        number = gets.strip
        case number
        when "1"
            jr_description
        when "2"
            tim_ferriss_description
        when "3"
            daniel_cleland_description
        when "4"
            puts "Go listen to music!"
        end
    end

    def jr_description
        puts "You asked for the Joe Rogan podcast"
    end

    def tim_ferriss_description
        puts "You asked for the Tim Ferriss podcast"
    end

    def daniel_cleland_description
        puts "You asked for News podcasts"
    end

    def comedy_menu
        puts "Which title are you interested in?"
        puts "1. Joe Rogan"
        puts "2. Joey Diaz"
        puts "3. Mark Maron"
        puts "4. Exit"
        puts "Pick a number"
        number = gets.strip
        case number
        when "1"
            jr_description
        when "2"
            joey_diaz_description
        when "3"
            mark_manson_description
        when "4"
            puts "Go listen to music!"
        end
    end

    def jr_description
        puts "You asked for the Joe Rogan podcast"
    end

    def joey_diaz_description
        puts "You asked for the Joey Diaz podcast"
    end

    def mark_maron_description
        puts "You asked for Mark Maron podcast"
    end

    def news_menu
        puts "Which title are you interested in?"
        puts "1. NPR"
        puts "2. Wall Street Journal"
        puts "3. CNN"
        puts "4. Exit"
        puts "Pick a number"
        number = gets.strip
        case number
        when "1"
            npr_description
        when "2"
            wsj_description
        when "3"
            cnn_description
        when "4"
            puts "Go listen to music!"
        end
    end
    
    def npr_description
        puts "You asked for the NPR podcast"
    end

    def wsj_description
        puts "You asked for the WSJ podcast"
    end

    def cnn_description
        puts "You asked for CNN podcast"
    end

end
