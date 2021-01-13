class Menu
    
    def start
        puts " "
        puts '********************'
        puts " "
        puts "Here is a menu of top podcasts. Would you like to choose one?"
        puts " "
        puts '********************'
        puts " "
        puts "Go ahead and drop in your name first:"
        puts " "
        Scraper.get_data
        name_greeting(user_input)
    end

    def user_input
        gets.strip
    end

    def name_greeting(name)
        puts " "
        puts '********************'
        puts " "
        puts "What's up #{name}!"
        puts " "
        puts '********************'
        puts " "
        puts "Let's dive deep into some of the top podcasts!"
        puts " "
        puts '********************'
        puts " "
        puts "Input 'yes' to see a list of categories, 'exit' to leave the menu."
        puts " "
        menu
    end

    def menu
        selection = user_input

        if selection == 'yes'
            display_category
        elsif selection == 'exit'
            goodbye
        else
            invalid
            menu
        end
    end

    def display_category
        puts " "
        puts "Here's a list of categories to choose from:"
        puts " "
        @uniq_array = Category.all.uniq {|obj| obj.name}
        @uniq_array.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
        end
        puts " "
        puts "For a list of top podcasts, select a category's number. Or type 'exit' to leave the menu."
        puts " "
        title_menu
    end

    def title_menu
        user_input = gets.strip
        if user_input.to_i.between?(1,@uniq_array.count)
            display_title(user_input.to_i-1)
        elsif user_input == 'exit'
            goodbye
        else
            invalid
            title_menu
        end
    end


    def display_title(number)
        puts " "
        puts "Here's your list:"
        puts " "
        podcasts = @uniq_array[number].podcasts
        podcasts.each.with_index(1) do |podcast, index|
        puts "#{index}. #{podcast.title}"
        end
        puts " "
        puts "For a description of one of these podcasts, choose a number. Or type 'exit' to leave the menu."
        puts " "
        user_input = gets.strip.to_i
        puts " "
        if user_input.between?(1,podcasts.count)
            display_description(user_input, podcasts)
        elsif user_input == 'exit'
            goodbye
        else
            invalid
            display_title(number)
        end
    end


    def display_description(number, podcasts)
        podcast = podcasts[number-1]
        puts "#{podcast.description.gsub("Read More", "")}"
        puts " "
        more_podcasts
    end

    def more_podcasts
        puts " "
        puts "What do you think? Want to see more podcasts? Type 'yes' or 'exit'."
        puts " "
        user_input = gets.strip
        if user_input == 'yes'
            display_category
        elsif user_input == 'exit'
            goodbye
        else
            invalid
            more_podcasts
        end
    end

    def goodbye
        puts " "
        puts "See ya later!"
        puts " "
        exit
    end

    def invalid
        puts '********************'
        puts " "
        puts "Your input doesn't seem valid. Let's give it another go!"
        puts " "
        puts '********************'
    end

end