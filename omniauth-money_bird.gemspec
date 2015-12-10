lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/money_bird/version"

Gem::Specification.new do |gem|
  gem.add_dependency "oauth2",     "~> 1.0"
  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'

  gem.add_development_dependency "bundler", "~> 1.0"

  gem.authors       = ["Danny Hiemstra"]
  gem.email         = ["dannyhiemstra@gmail.com"]
  gem.description   = "OAuth2 strategy for MoneyBird V2"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/dhiemstra/omniauth-money_bird"
  gem.licenses      = %w(MIT)

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-money_bird"
  gem.require_paths = %w(lib)
  gem.version       = OmniAuth::MoneyBird::VERSION
end
