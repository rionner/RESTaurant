class SessionsController < Sinatra::Base

  # Sessions
  enable :sessions

  # Helpers
  helpers Sinatra::SessionHelper
  use Rack::MethodOverride

  # Debugging
  get '/pry' do
    binding.pry
  end

  # Session Routes
  # Create : make a session
  post '/' do
    user = User.find_by(:username => params[:username])
    if user && user.password == params[:password]
      session[:current_user] = user.id
      redirect '/admin'
    else
      redirect '/'
    end
  end

  # Delete : end a session
  delete '/' do
    session[:current_user] = nil
    redirect '/'
  end

end
