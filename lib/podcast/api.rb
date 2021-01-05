class API

    def self.get_data    
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/search?q=star%20wars&sort_by_date=0&type=episode&offset=0&len_min=10&len_max=30&genre_ids=68%2C82&published_before=1580172454000&published_after=0&only_in=title%2Cdescription&language=English&safe_mode=0",
        headers:{
        "X-ListenAPI-Key" => "e6b9a575636b4aa894ea48c9c6ff3d01",
         }
        podcast_array = JSON.parse(response)
        podcast_array.each do |podcast|
            Podcast.new(podcast["language"], podcast["genre"], podcast["title"], podcast["description"])
        end
    end
end