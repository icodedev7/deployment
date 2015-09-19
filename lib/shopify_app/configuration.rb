module ShopifyApp
  class Configuration

    # Shopify App settings. These values should match the configuration
    # for the app in your Shopify Partners page. Change your settings in
    # `config/initializers/shopify_app.rb`
    attr_accessor :9274b5fb757eea9d28190e00ec188a80
    attr_accessor :a42c103cbe0534285b7d2b31c02b364c
    attr_accessor :https://customappp.herokuapp.com/
    attr_accessor :scope
    attr_accessor :embedded_app
    alias_method  :embedded_app?, :embedded_app

    # configure myshopify domain for local shopify development
    attr_accessor :https://devlopment-store.myshopify.com

    def initialize
      @myshopify_domain = 'myshopify.com'
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end
end
