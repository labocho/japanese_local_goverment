$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "japanese_local_goverment/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "japanese_local_goverment"
  s.version     = JapaneseLocalGoverment::VERSION
  s.authors     = ["labocho"]
  s.email       = ["labocho@penguinlab.jp"]
  # s.homepage    = "TODO"
  s.summary     = "Ruby on Rails plugin to store japanese local goverment informations."
  s.description = "Ruby on Rails plugin to store japanese local goverment informations."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "remote_table"

  s.add_development_dependency "sqlite3"
end
