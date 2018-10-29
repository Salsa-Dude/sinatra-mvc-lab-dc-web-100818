require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/' do
    user_pharse = params[:user_phrase]
    erb :piglatinizer
  end
end