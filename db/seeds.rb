# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# SQLite version 3.x
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem 'sqlite3'
#   gem "pg"
#
#default: &default
  #adapter: sqlite3
  #pool: 5
 # timeout: 5000

#development:
  #<<: *default
  #database: db/development.sqlite3

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
#test:
  #<<: *default
  #database: db/test.sqlite3

#production:
 # <<: *default
  #database: db/production.sqlite3
  default: &default
   adapter: postgresql
   encoding: unicode
  
development:
   adapter:'postgresql',
   encoding: 'unicode',
   host:ec2-54-204-12-25.compute-1.amazonaws.com ,
   port:5432 ,
   database:dces63muf9v1ni,
   username:nhszlzfeezupzl ,
   password: 26T-4jfkTCtiaSFXpPpllTp5Fd

