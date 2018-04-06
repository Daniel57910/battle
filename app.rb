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
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:player1]
    @name2 = session[:player2]
    @player_2_score = 100
    erb :play
  end

  get '/attack' do
    @name1 = session[:player2]
    "#{@name1} was successfully attacked"
  end

  run! if app_file == $0

end