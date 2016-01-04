# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application





equire 'bundler/setup'
require 'sinatra/base'
require 'omniauth-shopify-oauth2'

SCOPE = 'read_products,read_orders,read_customers,write_shipping'
SHOPIFY_API_KEY = ENV['1557f5e9b1d11e7812c973e2f7d94782']
SHOPIFY_SHARED_SECRET = ENV['ed8d006d04bd0c0b542ad675f7a05e2c']

unless SHOPIFY_API_KEY && SHOPIFY_SHARED_SECRET
  abort("SHOPIFY_API_KEY and SHOPIFY_SHARED_SECRET environment variables must be set")
end

class App < Sinatra::Base
  get '/' do
    <<-HTML
    <html>
    <head>
      <title>Shopify Oauth2</title>
    </head>
    <body>
      <form action="/auth/shopify" method="get">
      <label for="shop">Enter your store's URL:</label>
      <input type="text" name="shop" placeholder="devlpoment_store.myshopify.com">
      <button type="submit">Log In</button>
      </form>
    </body>
    </html>
    HTML
  end

  get '/auth/:provider/callback' do
    <<-HTML
    <html>
    <head>
      <title>Shopify Oauth2</title>
    </head>
    <body>
      <h3>Authorized</h3>
      <p>Shop: #{request.env['omniauth.auth'].uid}</p>
      <p>Token: #{request.env['omniauth.auth']['1557f5e9b1d11e7812c973e2f7d94782']['8a7fd0e949c7c9f6e31528aa7ff65860-1451902652']}</p>
    </body>
    </html>
    HTML
  end

  get '/auth/failure' do
    <<-HTML
    <html>
    <head>
      <title>Shopify Oauth2</title>
    </head>
    <body>
      <h3>Failed Authorization</h3>
      <p>Message: #{params[:message]}</p>
    </body>
    </html>
    HTML
  end
end

use Rack::Session::Cookie, secret: SecureRandom.hex(64)

use OmniAuth::Builder do
  provider :shopify, SHOPIFY_API_KEY, SHOPIFY_SHARED_SECRET, :scope => SCOPE
end

run App.new
