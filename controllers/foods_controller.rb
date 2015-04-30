class FoodsController < Sinatra::Base

  # Sessions
  enable :sessions

  # Helpers
  helpers Sinatra::SessionHelper

  def food_params
    return params[:food] if params[:food]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['food'] || body_data
  end

  # Connection

  # Debugging
  get '/pry' do
    binding.pry
  end

  # FOODS API Routes
  # Create : make a new food
  post '/' do
    authenticate_api!
      content_type :json
      food = Food.create(food_params)
      food.to_json
  end

  # Read : get all foods
  get '/' do
    content_type :json
    foods = Food.all
    foods.to_json
  end

  # Read : get specific food
  get '/:id' do
    content_type :json
    food = Food.find(params[:id].to_i)
    food.to_json
  end

  # Update : change specific food
  patch '/:id' do
    authenticate_api!
      content_type :json
      food = Food.find(params[:id].to_i)
      food.update(food_params)
      food.to_json
  end

  # Update : change specific food
  put '/:id' do
    authenticate_api!
      content_type :json
      food = Food.find(params[:id].to_i)
      food.update(food_params)
      food.to_json
  end

  # Delete : destroy specific food
  delete '/:id' do
    authenticate_api!
      content_type :json
      Food.destroy(params[:id].to_i)
      {success: "food record successfully deleted"}.to_json
  end

end
