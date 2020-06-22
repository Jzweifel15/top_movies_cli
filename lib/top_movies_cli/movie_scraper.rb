class TopMoviesCli::MovieScraper

    def self.scrape_movie(url)
        page = Nokogiri::HTML(URI.open(url))
        movies = []
        
        page.css("div.clearfix").each do |movie|
            title = movie.css("div.col-sm-17.article_movie_title a").text
            value = movie.css("h2 strong").text
            release_date = movie.css("div.col-sm-17 strong").text
            description = movie.css("div.col-sm-17 p").text
            movies.push({value: value, title: title, release_date: release_date, description: description})
        end

        movies

    end

end