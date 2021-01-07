class Menu
    
    def start
        puts " "
        puts "Here is a list of top podcasts. Would you like to choose one?"
        puts " "
        puts "Go ahead and drop in your name:"
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
    end

    def self.display_category(category)
        self.print_all(category)
        input_prompt = "For a top podcast list in a category you want, select a #{category}'s number"
        puts input_prompt
    end

    def self.display_title(title)

    end

    def self.display_description(description)
        
    end
end