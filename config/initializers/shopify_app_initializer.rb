ShopifyApp.configure do |config|
  config.api_key = ENV['a0d5ba398f7eb2de0c9dc7672eb94b53']
  config.secret = ENV['d557fb57a6a882d152545284e02fbc31']
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
  config.routes = false
end
