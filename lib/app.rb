require 'sinatra/base'
require_relative 'player'
require_relative 'game'

$game = Game.new

class Battle < Sinatra::Base 
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

  get '/begin' do
    erb :index
  end

  post '/names' do
    p params
    $game.player1.add_name(params[:player1])
    $game.player2.add_name(params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack
    "#{$game.player2.name} was successfully attacked. Score is #{$game.player2.score}"
  end

  run! if app_file == $0

end