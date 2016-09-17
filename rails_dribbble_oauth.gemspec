$:.push File.expand_path("../lib", __FILE__)
require "rails_dribbble_oauth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-dribbble-oauth"
  s.version     = RailsDribbbleOauth::VERSION
  s.authors     = ["Esther Leytush"]
  s.email       = ["eleytush@gmail.com"]
  s.summary     = "A Ruby wrapper for authenticating users through Dribbble, with minimal dependencies."
  s.homepage    = "https://github.com/mindplace/rails-dribbble-oauth"
  s.license     = "MIT"

  s.required_ruby_version     = '>= 2.1.0'
  s.required_rubygems_version = '>= 1.8.11'

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "README.md"]

  s.add_dependency 'rails', ['>= 4.0', '< 6']
  s.add_dependency 'pry'
  s.add_development_dependency 'bundler', '~> 1.0'
end
