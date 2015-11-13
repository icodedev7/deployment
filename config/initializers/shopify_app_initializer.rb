ShopifyApp.configure do |config|
  config.api_key = ENV['9274b5fb757eea9d28190e00ec188a80']
  config.secret = ENV['d557fb57a6a882d152545284e02fbc31']
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
  config.routes = false
end
