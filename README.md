# Shopify Embedded Application Example

This is an example application for building Shopify Embedded Applications.

The example uses Ruby on Rails as a backend framework but the Shopify Embedded API is JavaScript based, so it is backend language/framework agnostic. Use this as a reference.

For details on how embedded applications work in Shopify, how to setup your app, and the full javascript API for `ShopifyApp`, please consult the documentation:

http://docs.shopify.com/embedded-app-sdk

# Setting up this application

Clone the repo from git:

    git clone https://github.com/Shopify/embedded-app-example.git
    cd embedded-app-example

Create a `.env` file for your application credentials. These credentials are generated in your Shopify Partner account for your app:

```
SHOPIFY_CLIENT_API_KEY=a0d5ba398f7eb2de0c9dc7672eb94b53
SHOPIFY_CLIENT_API_SECRET=d557fb57a6a882d152545284e02fbc31

Note that your app must have the Embedded App SDK enabled in that same partner account page.

Install the gems:

    bundle install

Create necessary tables:

    rake db:migrate

Run the server:

    bundle exec rails server

Deploy to Heroku:
    heroku create
    git push heroku master
    heroku run rake db:migrate
    heroku config:set SHOPIFY_CLIENT_API_KEY=a0d5ba398f7eb2de0c9dc7672eb94b53
    heroku config:set SHOPIFY_CLIENT_API_SECRET=d557fb57a6a882d152545284e02fbc31
    heroku open

To install the application on your dev-shop go to:

    http://localhost:3000/login?shop=<yourdevshop-url.myshopify.com>

You will be prompted to install the application and will be redirected to the embedded Shopify environment once installed.

For local development most modern browsers will block mixed content. Since Shopify runs on HTTPS and a local development server does not, the browser will block the contents of the iframe. The you can either explicitly allow mixed content for your session, or use an HTTPS forwarding service.
