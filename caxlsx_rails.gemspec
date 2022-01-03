$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "axlsx_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "caxlsx_rails"
  s.version     = AxlsxRails::VERSION
  s.licenses    = ['MIT']
  s.authors     = ["Noel Peden"]
  s.email       = ["noel@peden.biz"]
  s.homepage    = "https://github.com/caxlsx/caxlsx_rails"
  s.summary     = "A simple rails plugin to provide an xlsx renderer using the caxlsx gem."
  s.description = "Caxlsx_Rails provides an Caxlsx renderer so you can move all your spreadsheet code from your controller into view files. Partials are supported so you can organize any code into reusable chunks (e.g. cover sheets, common styling, etc.) You can use it with acts_as_caxlsx, placing the to_xlsx call in a view and adding ':package => xlsx_package' to the parameter list. Now you can keep your controllers thin!"

  s.files = Dir["{app,config,db,lib}/**/*"] + Dir['[A-Z]*'] - Dir["spec/**/*"] - ['Guardfile']
  s.test_files = Dir["spec/**/*"] + ['Guardfile']

  s.add_dependency "actionpack", ">= 3.1"
  s.add_dependency "caxlsx", ">= 3.0"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "capybara"
  s.add_development_dependency "roo"
  s.add_development_dependency "rubyzip"
  s.add_development_dependency "rb-fsevent"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-nav"
end
