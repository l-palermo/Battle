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
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @player1_score = $game.player1.score
    @player2_score = $game.player2.score
    @attack = session[:attack]
    erb(:play)
  end

  post '/attack' do
    $game.attack
    session[:attack] = $game.turn.odd?
    redirect '/play'
  end

  post '/ok' do
    session[:attack] = 0
    redirect '/play'
  end
  
  run! if app_file == $0
end
