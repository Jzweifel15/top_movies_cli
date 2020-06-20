# CLI Controller
class TopMoviesCli::CLI 

    def call
        list_movies
        list
        goodbye
    end

    def list_movies
        puts "The Top Grossing Movies of All Time"
        @movies = TopMoviesCli::Movie.top_grossing
        @movies.each_with_index do |movie, i|
            puts "#{i + 1}. #{movie.title}"
        end
    end

    def list 
        input = nil
        while input != "quit"
            puts "Enter a number (1-50) to get more information on that movie: "
            puts "Or type list to see the list of movies again: "
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

    def goodbye
        puts "Goodbye and Thank You for choosing Top Movies CLI"
    end

end