#DSL
#Domain specific language
# Sinatra
require 'httparty'
require 'sinatra'
require 'sinatra/reloader'

# set :port, 1337
set :bind, '0.0.0.0'

get '/:subreddit' do
  @title = "Home"
  @links = ["Home", "About", "Links", "Contact", "My work"]
  @reddit_data = HTTParty.get "http://reddit.com/r/#{params[:subreddit]}.json?limit=100&first=#{params[:first]}"
  @reddit_data = HTTParty.get "http://reddit.com/r/#{params[:subreddit]}.json?limit=100&after=#{params[:after]}"
  erb :index
end

get '/about' do
  @title = "About"
  @links = ["Home", "About", "Links", "Contact", "My work"]
  erb :about
end

get '/print/:word' do
  "#{params[:word]}"
end
