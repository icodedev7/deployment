source "https://rubygems.org"
ruby "2.1.5"

gem "rails", "4.2.2"

gem "shopify_app", "~> 6.0.0"
gem "jquery-rails", "~> 4.0.4"
gem "quiet_assets"
gem 'dotenv-rails'

group :assets do
  gem "sass-rails"
  gem "coffee-rails"
  gem "uglifier", ">= 1.0.3"
end

group :development, :test do
  gem "thin"
  gem "less-rails-bootstrap"
  gem "therubyracer", platforms: :ruby
  gem "pry-rails"
  gem "sqlite3"
end

group :production do
  gem "pg"
end