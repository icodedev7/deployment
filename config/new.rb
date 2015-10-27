ShopifyApp::SessionRepository
ShopifyApp.configure do |config|
  config.api_key = ENV['a0d5ba398f7eb2de0c9dc7672eb94b53']
  config.secret = ENV['a42c103cbe0534285b7d2b31c02b364c']
  config.redirect_uri = "<%= https://customappp.herokuapp.com/ %>"
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
end