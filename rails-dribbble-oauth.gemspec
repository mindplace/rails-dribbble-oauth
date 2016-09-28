$:.push File.expand_path("../lib", __FILE__)
require "rails-dribbble-oauth/version"

Gem::Specification.new do |s|
  s.name        = "rails-dribbble-oauth"
  s.version     = RailsDribbbleOauth::VERSION
  s.authors     = ["Esther Leytush"]
  s.email       = ["eleytush@gmail.com"]
  s.summary     = "A Rails engine gem for authenticating users through Dribbble, with no dependencies."
  s.homepage    = "https://github.com/mindplace/rails-dribbble-oauth"
  s.license     = "MIT"

  s.required_ruby_version     = '>= 2.2.5'
  s.required_rubygems_version = '>= 2.6.0'

  # s.files = Dir["{app,bin,config,lib,screenshots}/**/*", "MIT-LICENSE", "README.md"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', ['>= 4.0', '< 6']

  # Production and testing:
  s.add_development_dependency 'pry', '~> 0.10.4'
  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rspec-rails', '~> 3.5.2'
  s.add_development_dependency 'capybara', '~> 2.7.1'
  s.add_development_dependency 'factory_girl_rails', '~> 4.4.1'

end
