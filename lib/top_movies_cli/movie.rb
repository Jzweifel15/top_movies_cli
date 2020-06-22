class TopMoviesCli::Movie 

    attr_accessor :title, :value, :release_date, :description

    @@all = []

    def initialize(movie_hash)
        movie_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        @@all.push(self)
    end

    def self.create(movies)
        movies.each do |movie_hash|
          TopMoviesCli::Movie.new(movie_hash)
        end
    end

    def self.all 
        @@all
    end

end