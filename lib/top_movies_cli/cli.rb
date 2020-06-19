# CLI Controller
class TopMoviesCli::CLI 

    def call
        list_movies
        list
        goodbye
    end

    def list_movies
        puts "The Top Grossing Movies of All Time"
        puts <<-DOC.gsub /^\s*/, ''
            1. Avengers: End Game
            2. Avatar
            3. Titanic
            4. Star Wars: Episode VII - The Force Awakens
            5. Avengers: Infinity War
        DOC
    end

    def list 
        input = nil
        while input != 'quit'
            puts "Enter a number (1-50) to get more information on that movie: "
            puts "Or type list to see the list of movies again: "
            input = gets.strip.downcase
            case input 
            when '1'
                puts 'More info on Avengers: End Game'
            when '2'
                puts 'More info on Avatar'
            when '3' 
                puts 'More info on Titanic'
            when '4'
                puts 'More info on Star Wars: Episode VII - The Force Awakens'
            when '5'
                puts 'More info on Avengers: Infinity War'
            when 'list'
                list_movies
            end
        end
    end

    def goodbye
        puts 'Goodbye and Thank You for choosing Top Movies CLI'
    end

end