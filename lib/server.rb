#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sinatra'
require_relative './db'

# create a new instance of the database
db = DB.new

# $ curl --location --request GET 'localhost:4567/'
get '/' do
  "Howdy. This is our shopping cart API.\n"
end

# $ curl --location --request GET 'localhost:4567/cart/1'
get '/cart/:id' do
  id = params['id'].to_i
  cart = db.data[id]
  "Cart with id #{id} has #{cart.items}.\n"
end

# $ curl --location --request POST 'localhost:4567/cart'
post '/cart' do
  cart = Cart.new
  db.data << cart
  "New cart with id #{db.data.length} has #{cart.items}.\n"
end

# $ curl --location --request PATCH 'localhost:4567/cart/1?soda=1'
patch '/cart/:id' do # put/patch
  id = params['id']
  cart = db.data[id.to_i]

  soda = params['soda'].to_i
  milk = params['milk'].to_i
  hotdogs = params['hotdogs'].to_i
  mustard = params['mustard'].to_i

  cart.items[:soda] += soda # add the value to the existing quantity
  cart.items[:milk] += milk
  cart.items[:hotdogs] += hotdogs
  cart.items[:mustard] += mustard
  "Cart with id #{id} has #{cart.items}.\n"
end

# $ curl --location --request DELETE 'localhost:4567/cart/1'
delete '/cart/:id' do
  id = params['id'].to_i

  db.data.delete_at(id)
  "Cart wth id #{id} is deleted. The DB now has #{db.data.length} records.\n"
end
