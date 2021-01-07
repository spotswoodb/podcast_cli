class Menu
    
    def start
        puts " "
        puts "Here is a list of top podcasts. Would you like to choose one?"
        puts " "
        puts "Go ahead and drop in your name:"
        Scraper.get_data
        name_greeting(user_input)
    end

    def user_input
        gets.strip
    end

    def name_greeting(name)
        puts " "
        puts "What's up #{name}!"
        puts " "
        puts "Dive deep into a list of the top podcasts!"
        display_category
    end

    def display_category
        categories = Category.all
        uniq_array = categories.uniq {|obj| obj.name}
        uniq_array.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
        end
        binding.pry
        input_prompt = "For a top podcast list in a category you want, select a category's number."
        puts input_prompt
    end

    def display_title(title)

    end

    def display_description(description)

    end
end