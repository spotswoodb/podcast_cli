class Scraper

    # def self.get_data    
    #     api_key = ENV["API_KEY"]
    #     response = Unirest.get "https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=93&page=2&region=us&safe_mode=0",
    #     headers:{
    #     "X-ListenAPI-Key" => api_key
    #      }
    #      binding.pry
    #     podcast_array = JSON.parse(response&.body || "{}")
        
      
    # end

    # def self.get_data
    #     html = open("chartable.com/charts/spotify/united-states-of-america-top-podcasts")
    #     binding.pry
    #     doc = Nokogiri::HTML(html)
    #     container = doc.css('tbody')

    #     container.each do |el|
    #         binding.pry
    #     end 

    #     # div.title.f3
    # end 


        def self.get_data
            html = URI.open("https://toppodcast.com/top-podcasts/")
            doc = Nokogiri::HTML(html)
            container = doc.css('div.allTopPodcasts div.podcastRow')
            container.each do |el|
                title = el.css('h3').text.strip
                description = el.css('div.podcast-short-description').text
                category = el.css('span.category-box').text
                Podcast.new(title, description, category)
            end 
        end 
   
end

