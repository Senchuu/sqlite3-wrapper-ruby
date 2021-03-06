# frozen_string_literal: true

require_relative "lib/sqlite3_wrapper/version"

Gem::Specification.new do |spec|
  spec.name          = "sqlite3_wrapper"
  spec.version       = Sqlite3Wrapper::VERSION
  spec.authors       = ["senchuu"]
  spec.email         = ["senchuuuu@gmail.com"]

  spec.summary       = "ruby sqlite3 wrapper"
  spec.description   = "A sqlite3 wrapper written in ruby for useful and small databases"
  spec.homepage      = "https://github.com/Senchuu/sqlite3-wrapper-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "sqlite3"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
