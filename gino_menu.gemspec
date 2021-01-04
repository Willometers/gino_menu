require_relative 'lib/gino_menu/version'

Gem::Specification.new do |spec|
  spec.name          = "gino_menu"
  spec.version       = GinoMenu::VERSION
  spec.authors       = ["BillyMiles"]
  spec.email         = ["williammiles201@gmail.com"]

  spec.summary       = "CLI app to see menu items scraped from restaraunt webpage."
  spec.description   = "Access menu items and their descriptions."
  spec.homepage      = "https://github.com/Willometers/gino_menu"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Willometers/gino_menu"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
