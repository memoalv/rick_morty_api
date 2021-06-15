# frozen_string_literal: true

require_relative "lib/rick_morty_api/version"

Gem::Specification.new do |spec|
  spec.name          = "rick_morty_api"
  spec.version       = RickMortyApi::VERSION
  spec.authors       = ["Guillermo Alvarez"]
  spec.email         = ["guillermo@icalialabs.com"]

  spec.summary       = "Small interface to interact with the Rick and Morty API"
  spec.description   = "Small interface to interact with the Rick and Morty API"
  spec.homepage      = "https://github.com/memoalv/rick_morty_api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/memoalv/rick_morty_api"
  spec.metadata["changelog_uri"] = "https://github.com/memoalv/rick_morty_api"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # dependencies
  spec.add_dependency "faraday", "~> 1.4", ">= 1.4.2"

  # dev dependencies
  spec.add_development_dependency "rspec", "~> 3.2"
end
