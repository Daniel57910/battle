require 'sinatra/base'

class Battle < Sinatra::Base
  
  get '/' do
    'Testing infrastructure working!'
  end

  get '/begin' do
    erb :index
  end

  post '/names' do
    p params
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :play
  end

  run! if app_file == $0
end