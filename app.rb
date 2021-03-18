require 'sinatra'


class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/TEST' do
    'Testing infrastructure working!'
  end

  post '/names' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:plays)
  end
end
