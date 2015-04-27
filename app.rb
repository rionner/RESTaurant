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




# save party reciept to a file
get '/api/parties/:id/receipt' do
  content_type :json
  order = Order.find_by(Party.find_by(params[:id].to_i))
  order.to_json
end

# mark the party order as paid
patch '/api/parties/:id/checkout' do
  content_type :json
  party = Party.find_by(params[:id].to_i)
  party.paid = true.to_json
end

# mark the party order as paid
put '/api/parties/:id/checkout' do
  content_type :json
  party = Party.find_by(params[:id].to_i)
  party.paid = true.to_json
end
