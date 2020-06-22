HELLO WORLD!

# TopMoviesCli

This gem is the first portfolio project for Flatiron Schools Online Software Engineering program that allows students to progress to the next module of the cohort.

The Top Movies CLI program will scrape data from the Rotten Tomatoes webpage on the top 50 grossing movies of all time. A list of movies will be displayed in the command line for the user to choose from and get more information, like the title, the total dollar value, the original release date, and a description, on each movie of choice.

## Usage

6/22/20 16:58
Today, I have successfully created a MovieScraper class and a Movie class. The MovieScraper class has a class method that takes in an argument of a URL (the URL that the gem scrapes from to get its data), uses the Nokogiri and Open-URI gems to collect the information we need (title, value, release date, and description), then iterates through the data and creates a hash to store each movie's information, and pushes each instance to an array. This array will allow us to have access and see each instance that got created.

Next, the Movie class will allow us to take each key/value pair from the hash that was in the MovieScraper class and turn each instance into a movie object.

The CLI class is the last class that needs to be touched up on to make the gem fully operational. So far, I have successfully been able display a greeting message for the user and display the entire list of Movies in their proper order, as well as, show each movie's title.

6/20/20 14:49
Project is still in its rough draft state. I required the Nokogiri and Open-URI modules to allow the program to scrape from a webpage, which I have finally implemented a method that scrapes from the Rotten Tomatoes webpage. I played around inside a Repl.it sandbox to ensure that the data I scrape is the correct data.

6/20/20 11:54
Project is still in its rough draft stage, but the rough draft is getting closer to its final form. Data is still somewhat hard coded, however, each movie can now be found as an object. At this point, still no scraping from the Rotten Tomatoes webpage.

6/19/20 20:36
So far, I have only set up a small rough draft of how the program will be set up. The code seen so far is not the final product.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top_movies_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install top_movies_cli

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/top_movies_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/top_movies_cli/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TopMoviesCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/top_movies_cli/blob/master/CODE_OF_CONDUCT.md).
