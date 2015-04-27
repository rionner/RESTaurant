# Get dem gems
require 'bundler/setup'
Bundler.require()

# Connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restaurant'
)

# Models
require './models/party'
require './models/food'
require './models/order'
require './models/user'

# Namespace
namespace :db do

  desc 'Create Admin User'
  task :create_user do
    user = User.new( {username: ''} )
    user.password = '12345'
    user.save!
  end

  # Generate random Parties
  rand(5..15).times do |num|
    Party.create({
      table_number: num,
      is_paid: [true, false, false].sample
    })
  end

  # Generate random Orders
  parties = Party.all
  foods = Food.all
  rand(10..35).times do |num|
    Order.create({
      party: parties.sample,
      food: foods.sample
    })
  end

  desc "Empty Database"
  task :empty do
    Order.destroy_all
    Food.destroy_all
    Party.destroy_all
  end # task :empty

end # namespace :db
