require 'sinatra'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/TEST' do
    'Testing infrastructure working!'
  end

  post '/names' do
    p params

    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:plays)
  end

  post '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end
end
