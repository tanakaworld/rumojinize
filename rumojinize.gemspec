$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rumojinize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "rumojinize"
  s.version = Rumojinize::VERSION
  s.authors = ["tanakaworld"]
  s.email = ["yutaro.tanaka.world@gmail.com"]

  s.summary = %q{ActiveRecord plugin make you easily store the data includes emoji to DB.}
  s.description = %q{ActiveRecord plugin make you easily store the data includes emoji to DB.}
  s.homepage = "http://tanakaworld.github.io/rumojinize"
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
