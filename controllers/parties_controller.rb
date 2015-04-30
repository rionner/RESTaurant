class PartiesController < Sinatra::Base

  # Sessions
  enable :sessions

  # Helpers
  helpers Sinatra::SessionHelper

  def party_params
    return params[:party] if params[:party]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['party'] || body_data
  end

  # Connection

  # Debugging
  get '/pry' do
    binding.pry
  end

  # PARTIES API Routes
  # Create : make a new party
  post '/' do
    content_type :json
    party = Party.create(party_params)
    party.to_json(include: :foods)
  end

  # Read : get all parties
  get '/' do
    content_type :json
    parties = Party.all
    parties.to_json(include: :foods)
  end

  # Read : get specific party
  get '/:id' do
    content_type :json
    party = Party.find(params[:id].to_i)
    party.to_json(include: :foods)
  end

  # Read : get specific party receipt
  get '/:id/receipt' do
    content_type :json
    party = Party.find(params[:id].to_i)
    party.to_json(include: :foods, method: :receipt)
  end

  # Update : change specific party
  patch '/:id' do
    content_type :json
    party = Party.find(params[:id].to_i)
    party.update(party_params)
    party.to_json(include: :foods)
  end

  # Update : change specific party
  put '/:id' do
    content_type :json
    party = Party.find(params[:id].to_i)
    party.update(party_params)
    party.to_json(include: :foods)
  end

  # Delete : destroy specific party
  delete '/:id' do
    content_type :json
    Party.destroy(params[:id].to_i)
    {success: "party record successfully deleted"}.to_json
  end

end
