class OrdersController < Sinatra::Base

  # Sessions
  enable :sessions

  # Helpers
  helpers Sinatra::SessionHelper

  def order_params
    return params[:order] if params[:order]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['order'] || body_data
  end

  # Connection

  # Debugging
  get '/pry' do
    binding.pry
  end

  # ORDERS API Routes
  # Create : make a new order
  post '/' do
    content_type :json
    order = Order.create(order_params)
    order.to_json
  end

  # Read : get all orders
  get '/' do
    content_type :json
    orders = Orders.all
    orders.to_json
  end

  # Read : get specific order
  get '/:id' do
    content_type :json
    order = Orders.find(params[:id].to_i)
    order.to_json
  end

  # Update : change specific order
  patch '/:id' do
    content_type :json
    order = Orders.find(params[:id].to_i)
    order.update(order_params)
    order.to_json
  end

  # Update : change specific order
  put '/:id' do
    content_type :json
    order = Orders.find(params[:id].to_i)
    order.update(order_params)
    order.to_json
  end

  # Delete : destroy specific order
  delete '/:id' do
    content_type :json
    Orders.destroy(params[:id].to_i)
    {success: "order record successfully deleted"}.to_json
  end



end
