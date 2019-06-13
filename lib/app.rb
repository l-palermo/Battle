require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do 
    # "value=" << session[:value].inspect
    erb(:index)
  end
  
  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_score = $player2.score
    @attack = session[:attack]
    erb(:play)
  end

  post '/attack' do
    session[:attack] = "#{$player1.name} attacked #{$player2.name}"
    Game.new.attack($player2)
    redirect '/play'
  end


  
  run! if app_file == $0
end
