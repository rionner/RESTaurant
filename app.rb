require 'bundler'
Bundler.require()

# Connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restaurant'
)

# Models
require './models/food'

# Routes
# get application home page
get '/' do
  erb :index
end

# FOOD API Routes
# create a new food item
post '/api/foods' do

end

# get all food items
get '/api/foods' do

end

# get specific food item and all parties that included it
get '/api/foods/:id' do

end

# update a food item
patch '/api/foods/:id' do

end

# update a food item
put '/api/foods/:id' do

end

# delete a food item
delete '/api/foods/:id' do

end

# PARTY API Routes
# create a party
post '/api/parties' do

end

# get all parties
get '/api/parties' do

end

# get specific party and all orders they have
get '/api/parties/:id' do

end

# update a party
patch '/api/parties/:id' do

end

# update a party
put '/api/parties/:id' do

end

# delete a party
delete '/api/parties/:id' do

end

# ORDER API Routes
# create a new order
post '/api/orders' do

end

# get all orders
get '/api/orders' do

end

# get specific order
get '/api/orders/:id' do

end

# update an order
patch '/api/orders/:id' do

end

# update an order
put '/api/orders/:id' do

end

# delete an order
delete '/api/orders/:id' do

end

# save party reciept to a file
get '/api/parties/:id/receipt' do

end

# mark the party order as paid
patch '/api/parties/:id/checkout' do

end

# marke the party order as paid
put '/api/parties/:id/checkout' do

end
