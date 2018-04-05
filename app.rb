require 'sinatra/base'

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
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    p session[:player1]
    p session[:player2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:player1]
    p @name1
    @name2 = session[:player2]
    erb :play
  end

  get '/score' do
    @player_2_score = 100
    @name2 = sessions[:player2]
    erb :score
  end

  run! if app_file == $0

end