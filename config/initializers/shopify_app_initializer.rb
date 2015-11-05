ShopifyApp.configure do |config|
  config.api_key = ENV['a0d5ba398f7eb2de0c9dc7672eb94b53']
  config.secret = ENV['5ca1a4d8c85a641d7eba99f7d397b19f']
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
  config.routes = false
end
