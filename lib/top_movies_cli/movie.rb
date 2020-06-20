class TopMoviesCli::Movie 

    attr_accessor :title, :value, :release_date, :description

    def self.top_grossing

        #movie_1 = self.new
        #movie_1.title = 'Avengers: End Game'
        #movie_1.value = '$2.798 Billion'
        #movie_1.release_date = 'April 26, 2019'
        #movie_1.description = 'The journey that began in 2008 with Iron Man was coming to an end – at least for some of the characters in the Marvel Cinematic Universe.'

        #movie_2 = self.new
        #movie_2.title = 'Avatar'
        #movie_2.value = '$2.790 Billion'
        #movie_2.release_date = 'December 18, 2009'
        #movie_2.description = 'The world had to wait some 12 years for James Cameron to follow up the biggest film of all-time with what would become the new biggest film of all time.'

        #movie_3 = self.new
        #movie_3.title = 'Titanic'
        #movie_3.value = '$2.194 Billion'
        #movie_3.release_date = 'December 19, 1997'
        #movie_3.description = 'James Cameron makes expensive movies.'

        #movie_4 = self.new
        #movie_4.title = 'Star Wars: Episode VII - The Force Awakens'
        #movie_4.value = '$2.068 Billion'
        #movie_4.release_date = 'December 18, 2015'
        #movie_4.description = 'Twelve years after the completion of the Star Wars prequel trilogy, J.J. Abrams was tasked with making Episode VII – a monumental undertaking, and a risky one.'

        #movie_5 = self.new
        #movie_5.title = 'Avengers: Infinity War'
        #movie_5.value = '$2.048 Billion'
        #movie_5.release_date = 'April 27, 2018'
        #movie_5.description = 'Just shy of 10 years since it began, the Marvel Cinematic Universe gathered nearly every one of its characters for a galaxy-wide showdown with the series’ Big Bad, Thanos.'

        self.scrape_movies
    end

    def self.scrape_movies
        url = "https://editorial.rottentomatoes.com/article/highest-grossing-movies-all-time/"
        doc = Nokogiri::HTML(URI.open(url))
        movies = []

        doc.css("#article_main_body div.clearfix").each do |movie|
            movie = self.new
            title = movie.css("div.col-sm-17.article_movie_title a").text
            release_date = movie.css("div.col-sm-17 strong").text
            description = movie.css("div.col-sm-17 p").text
        end

        binding.pry

    end

end