class API

    def self.get_data    
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=93&page=2&region=us&safe_mode=0",
        headers:{
        "X-ListenAPI-Key" => "40b5a3f92aff479180ec670e9e622b73",
         }
         binding.pry
        podcast_array = JSON.parse(response)
        podcast_array.each do |podcast|
            Podcast.new(podcast["language"], podcast["genre"], podcast["title"], podcast["description"])
        end
    end
end

