# CLI Controller
require_relative "../top_movies_cli/movie_scraper.rb"
require_relative "../top_movies_cli/movie.rb"

class TopMoviesCli::CLI 

    URL = "https://editorial.rottentomatoes.com/article/highest-grossing-movies-all-time/"

    def run
        make_movie
        list_movies
        list
        goodbye
    end

    def make_movie
        movies = TopMoviesCli::MovieScraper.scrape_movie(URL)
        TopMoviesCli::Movie.create(movies)
    end

    def list_movies
        puts "--------------------------------------------------------------------------"
        puts "The Top Grossing Movies of All Time!!!"
        puts "Enter a number (1 - 50) to get more information on that movie"
        puts "Type 'list' to see the list of movies again or 'quit' to exit the program"
        puts "--------------------------------------------------------------------------"
        TopMoviesCli::Movie.all.each_with_index do |movie, i|
            puts "#{i}. #{movie.title}"
        end
    end

    def list 
        input = nil
        while input != "quit"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i <= 50
                movies_array = TopMoviesCli::Movie.all
                puts "----------------------------------"
                puts movies_array[input.to_i].title
                puts movies_array[input.to_i].release_date
                puts movies_array[input.to_i].description
                puts "----------------------------------"
            elsif input == "list"
                list_movies
            end

        end

    end

    def goodbye
        puts "-------------------------------------------------"
        puts "Goodbye and Thank You for choosing Top Movies CLI"
        puts "-------------------------------------------------"
    end

end