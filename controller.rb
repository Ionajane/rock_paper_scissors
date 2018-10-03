require("sinatra")
require("sinatra/contrib/all")
require("pry")

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/play' do
  erb(:play)
end

get '/play/:user1/:user2' do
  user1 = params[:user1]
  user2 = params[:user2]
  game = Game.new(user1, user2)
  @winner = game.compare(user1, user2)
  erb(:result) #erb = EMBEDDED RUBY
end

get '/play/:user1/:user2' do
  user1 = params[:user1]
  user2 = params[:user2]
  game = Game.new(user1, user2)
  @winner = game.compare(user1, user2)
  erb(:result)
end

get '/play/user1/:user2' do
  user1 = params[:user1]
  user2 = params[:user2]
  game = Game.new(user1, user2)
  @winner = game.compare(user1, user2)
  erb(:result)
end
