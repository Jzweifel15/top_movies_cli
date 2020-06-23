class TopMoviesCli::MovieScraper

    def self.scrape_movie(url)
        page = Nokogiri::HTML(URI.open(url))
        movies = []
        
        page.css("div.clearfix").each do |movie|
            title = movie.css("div.col-sm-17.article_movie_title a").text
            release_date = movie.css("div.col-sm-17 strong").text
            description = movie.css("div.col-sm-17 p").text
            movies.push({title: title, release_date: release_date, description: description})
        end

        movies

    end

end