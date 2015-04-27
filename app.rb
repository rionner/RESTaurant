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
  content_type :json
  food = Food.create(params[:food])
  food.to_json
end

# get all food items
get '/api/foods' do
  content_type :json
  Food.all.to_json
end

# get specific food item and all parties that included it
get '/api/foods/:id' do
  content_type :json
  .to_json
end

# update a food item
patch '/api/foods/:id' do
  content_type :json
  .to_json
end

# update a food item
put '/api/foods/:id' do
  content_type :json
  .to_json
end

# delete a food item
delete '/api/foods/:id' do

end

# PARTY API Routes
# create a party
post '/api/parties' do
  content_type :json
  party = Party.create(params[:party])
  party.to_json
end

# get all parties
get '/api/parties' do
  content_type :json
  Party.all.to_json
end

# get specific party and all orders they have
get '/api/parties/:id' do
  content_type :json
  party = Party.find_by([:id])
  party.to_json(:include=> [:order, :food])
  .to_json
end

# update a party
patch '/api/parties/:id' do
  content_type :json
  .to_json
end

# update a party
put '/api/parties/:id' do
  content_type :json
  .to_json
end

# delete a party
delete '/api/parties/:id' do

end

# ORDER API Routes
# create a new order
post '/api/orders' do
  content_type :json
  order = Order.create(params[:order])
  order.to_json
end

# get all orders
get '/api/orders' do
  content_type :json
  Order.all.to_json
end

# get specific order
get '/api/orders/:id' do
  content_type :json
  .to_json
end

# update an order
patch '/api/orders/:id' do
  content_type :json
  .to_json
end

# update an order
put '/api/orders/:id' do
  content_type :json
  .to_json
end

# delete an order
delete '/api/orders/:id' do

end

# save party reciept to a file
get '/api/parties/:id/receipt' do
  content_type :json
  .to_json
end

# mark the party order as paid
patch '/api/parties/:id/checkout' do
  content_type :json
  .to_json
end

# mark the party order as paid
put '/api/parties/:id/checkout' do
  content_type :json
  .to_json
end
