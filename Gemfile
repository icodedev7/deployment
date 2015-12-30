source "http://rubygems.org"
gem 'devise'
# Bundle edge rails instead: gem 'rails ',github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end
group :production do
gem 'rails_12factor'
gem'pg'
end
# Use SCSS for stylesheets
gem 'sass-rails','~> 4.03'
# Use uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See  https://github.com/sstephenson/execis#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more : https://github.com/rails/turbolinks
gem 'turbolinks'
# Bulid JSON APIs with ease4. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the Api under doc/api.
gemn 'sdoc', '~> 0.4.0',      group: :doc

# Use ActiveModel has secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
#gem 'capistrano-rails', group: :develpoment
group :development do
  gem "shotgun"
end
group :development, :test do
  gem 'spring'
  gem 'sqlite3'
end
group :test do
  gem "rack-test"
  gem "minitest-spec-context"
  gem "mocha"
end

group :packaging do
  gem "fog"
end
