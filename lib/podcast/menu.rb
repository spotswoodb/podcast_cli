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
        puts "Input 'y' to see a list of categories, 'exit' to leave the menu."
        puts " "
        menu
    end

    def menu
        selection = user_input

        if selection == 'y'
            display_category
            menu
        elsif selection == 'exit'
            goodbye
        else
            invalid
        end
    end

    def display_category
        puts " "
        puts "Here's a list of categories to choose from:"
        puts " "
        categories = Category.all
        @uniq_array = categories.uniq {|obj| obj.name}
        @uniq_array.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
        end
        puts " "
        puts "For a list of top podcasts, select a category's number. Or type 'exit' to leave the application."
        puts " "
        title_menu
    end

    def title_menu
        user_input = gets.strip.to_i
        if user_input.between?(1,@uniq_array.count)
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
        puts "For a description of one of these podcasts, choose a number."
        puts " "
        user_input = gets.strip.to_i
        puts " "
        display_description(user_input, podcasts)
    end

    def display_description(number, podcasts)
        podcast = podcasts[number-1]
        puts "#{podcast.description}"
        puts " "
        puts "What do you think? Want to see more podcasts? Type 'yes' or 'exit'."
        puts " "
        menu
    end

    def goodbye
        puts " "
        puts "See ya later!"
        puts " "
        exit
    end

    def invalid
        puts " "
        puts "Your input doesn't seem valid. Give it another go?"
        puts " "
    end

# it's giving all of the podcasts descriptions in the first category regardless of selection - but I want just the one I selected

    # what to build when my CLI doesn't understand their input - build out invalid class
    # build out exit methods
    # need to make an invalid number not work when typed

end