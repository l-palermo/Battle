require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do 
    "value=" << session[:value].inspect
    erb(:index)
  end
  
  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end
  
  run! if app_file == $0
end