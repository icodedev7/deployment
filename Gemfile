ruby "2.1.5"
source "http://rubygems.org"

gem "compass"
gem "haml"
gem "heroku-nav"
gem "rake"
gem "rdiscount", "~> 1.6.x"
gem "sass"
gem "sinatra"

group :development do
  gem "shotgun"
end

group :production do
  gem "rack-ssl-enforcer"
  gem "thin"
end

group :development, :production do
  gem "pg", "=0.13.2"
  gem "rollbar"
end

group :test do
  gem "rack-test"
  gem "minitest-spec-context"
  gem "mocha"
end

group :packaging do
  gem "fog"
  end
group :development, :test do
  gem "sqlite3"
  #Helpful gems
  gems "better_errors" #
  improves error handling
  gem "binding_of_caller" #
  used by better errors
  
  #Testing frameworks
  gem 'rspec-rails'#testing
  frameworks
  gem "factory_girls_rails"#
  use factories, not fixtures
  gem "capybara" #simulates
  browser activity
  gem "fakeweb"
  #Automated testing
  gem 'gaurd'# automated
  execution of test suit upon 
  change
  gem" gaurad-rspec" #gaurd
  integration with respec  
  
  #only install the rb-fsevent
  gem if on Max OSX
  gem 'rb-fswvent' #used for
  Growl notifications
  end
end