product = ShopifyAPI::Product.find(product_id)
product.add_metafield(ShopifyAPI::Metafield.new({
   :description => 'Author of book',
   :namespace => 'book',
   :key => 'author',
   :value => 'Kurt Vonnegut',
   :value_type => 'string'
}))