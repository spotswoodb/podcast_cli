class API

    def self.get_data    
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=93&page=2&region=us&safe_mode=0",
        headers:{
        "X-ListenAPI-Key" => ENV["X-ListenAPI-Key"]
         }
         binding.pry
        podcast_array = JSON.parse(response&.body || "{}")
        
      
    end
end

