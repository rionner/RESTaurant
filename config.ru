# Get dem gems
require 'bundler/setup'
Bundler.require

# Connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restaurant'
)

# Helpers - file location
require './helpers/session_helpers'

# Models - file location
require './models/food'
require './models/order'
require './models/party'
require './models/user'

# Controllers - file location
require './controllers/foods_controller'
require './controllers/orders_controller'
require './controllers/parties_controller'
require './controllers/sessions_controller'
require './controllers/welcome_controller'

# Find API Routes - for each route, run specified controller
map('/api/foods') { run FoodsController.new() }
map('/api/parties') { run PartiesController.new() }
map('/api/orders') { run OrdersController.new() }
map('/sessions') { run SessionsController.new() }
map('/') { run WelcomeController.new() }
