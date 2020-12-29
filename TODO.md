$ podcast

> What language do you want to find podcasts in?
> English #=> Podcast.find_by_language(English)
> Listing Podcast Genres in English
> 1. Talk
> 2. Business
> 3. Crime
> Enter the podcast genre you are interested in:
> 1
> Listing Talk Podcasts #=> Podcast.find_by_english_genre(talk)
> 1. Joe Rogan Experience
> 2. Tim Ferriss
> What podcast do you want more info on?
> 1
> Joe Rogan, Coduit to the Gaian Mind

Podcast #=> Model
- pulling data from source
- parsing it
- matching person's query
- displaying specific podcasts by genre, title, description

Menu #=> Controller (direct the user from one place to another)
- #start
- main
    - initial options
    - gets input
    - delegates to menu choice

Adding a message...

Requirements:

A data source.

A menu...
communicates with the data source for information...
