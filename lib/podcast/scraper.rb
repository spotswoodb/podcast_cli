class Scraper

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

