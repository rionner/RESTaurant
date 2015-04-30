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

  # Generate fake Admin
  desc 'Create Admin User'
  task :create_user do
    user = User.new( {username: 'admin'} )
    user.password = '12345'
    user.save!
  end

  # Generate random Food Items
  desc "Fill Database some Junk Data"
  task :junk_data do

    # Generate random Food
    foods_starting = ['Chicken', 'Veggie', 'Beef', 'Rice']
    food_ending = ['Salad', 'Soup', 'Plate', 'Bowl']
    description = ['Lite', 'Homecooking', 'Party', 'Bar Food']
    rand(5..15).times do
      Food.create({
          name: ( foods_starting.sample + ' ' + food_ending.sample),
          description: description.sample,
          cents: rand(500..1500),
      })
    end

  # # Generate random Parties
  rand(5..15).times do |num|
    Party.create({
      table_num: num,
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

  end # task :junk_data

  desc "Empty Database"
  task :empty do
    Order.destroy_all
    Food.destroy_all
    Party.destroy_all
  end # task :empty

end # namespace :db
