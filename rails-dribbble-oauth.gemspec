$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails/dribbble/oauth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-dribbble-oauth"
  s.version     = Rails::Dribbble::Oauth::VERSION
  s.authors     = ["Esther Leytush"]
  s.email       = ["eleytush@gmail.com"]
  s.summary     = "A Ruby wrapper for authenticating users through Dribbble, with minimal dependencies."
  s.homepage    = "https://github.com/mindplace/rails-dribbble-oauth"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

end
