$:.push File.expand_path("../lib", __FILE__)
require "rails-dribbble-oauth/version"

Gem::Specification.new do |s|
  s.name        = "rails-dribbble-oauth"
  s.version     = RailsDribbbleOauth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Esther Leytush"]
  s.email       = ["eleytush@gmail.com"]
  s.summary     = "A Rails engine gem for authenticating users through Dribbble, with no dependencies."
  s.homepage    = "https://github.com/mindplace/rails-dribbble-oauth"
  s.license     = "MIT"

  s.add_dependency "rails", "~> 4.0", "< 6"

  # s.files = Dir["{app,bin,config,lib,screenshots}/**/*", "MIT-LICENSE", "README.md"]
  s.files = `git ls-files`.split("\n")

  # Production and testing:
  s.add_development_dependency 'pry', ['>= 0.10.4', '< 2.0']
  s.add_development_dependency 'bundler', ['>= 1.0', '< 2.0']
  s.add_development_dependency 'rspec-rails', ['>= 3.5', '< 4.0']
  s.add_development_dependency 'capybara', ['>= 2.7', '< 3.0']
  s.add_development_dependency 'factory_girl_rails', ['>= 4.4', '< 6.0']
end
