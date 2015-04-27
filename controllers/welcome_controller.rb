class WelcomeController < Sinatra::Base

  # Sessions
  enable :sessions

  # Helpers
  helpers Sinatra::SessionHelper

  # View File Route
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  # Debugging
  get '/pry' do
    binding.pry
  end

  # Routes
  get '/' do
    erb :index
  end

  get '/admin' do
    if current_user
      erb :admin_authenticated
    else
      erb :admin_non_authenticated
    end
  end

end
