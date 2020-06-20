require_relative 'lib/top_movies_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "top_movies_cli"
  spec.version       = TopMoviesCli::VERSION
  spec.authors       = ["Jzweifel15"]
  spec.email         = ["jzweifel15@yahoo.com"]

  spec.summary       = %q{Gets the top 50 grossing movies of all time}
  spec.description   = %q{Scrapes data from the Rotten Tomatoes webpage on the top 50 grossing movies of all time}
  spec.homepage      = "https://github.com/Jzweifel15/top_movies_cli.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Jzweifel15/top_movies_cli.git"
  spec.metadata["changelog_uri"] = "https://github.com/Jzweifel15/top_movies_cli.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
