require 'sinatra'
require './lib/player.rb'

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

    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player2_hp = $player2.hitpoints
    # @player1_attack = $player1.attack

    erb(:plays)
  end

  post '/ok' do
    redirect '/play'
  end

  post '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player2_attack = $player2.attack
    erb(:attack)
  end
end
