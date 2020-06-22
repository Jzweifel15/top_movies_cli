# CLI Controller
require_relative "../top_movies_cli/movie_scraper.rb"
require_relative "../top_movies_cli/movie.rb"

class TopMoviesCli::CLI 

    URL = "https://editorial.rottentomatoes.com/article/highest-grossing-movies-all-time/"

    def run
        make_movie
        list_movies
        #list
        goodbye
    end

    def make_movie
        movies = TopMoviesCli::MovieScraper.scrape_movie(URL)
        TopMoviesCli::Movie.create(movies)
    end

    def list_movies
        puts "----- The Top Grossing Movies of All Time!!! -----"
        puts "----- Enter a number (1-50) to get more information on that movie -----"
        puts "----- Or type list to see the list of movies again -----"
        TopMoviesCli::Movie.all.each_with_index do |movie, i|
            puts "#{i}. #{movie.title.upcase}"
        end
    end
=begin
    def list 
        input = nil
        while input != "quit"
            input = gets.strip.downcase
            if input.to_i > 0
                puts @movies[input.to_i - 1].title
                puts @movies[input.to_i - 1].value
                puts @movies[input.to_i - 1].release_date
                puts @movies[input.to_i - 1].description
            elsif input == "list"
                list_movies
            else
                puts "Movie not found in selection. Try choosing a number 1-50."
            end

        end

    end
=end

    def goodbye
        puts "Goodbye and Thank You for choosing Top Movies CLI"
    end

end