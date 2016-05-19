require 'httparty'
require 'pp'
require 'sinatra'
require 'sinatra/reloader'

api_url = "http://www.omdbapi.com/?"

# response = HTTParty.get "#{api_url}t=Harry Potter"
# response = HTTParty.get "#{api_url}t=Lord of the rings"
# response = HTTParty.get "#{api_url}t=Alien&plot=full&tomatoes=true"
# pp response

# # Home route
get '/' do
  erb :index
end

post '/search' do
  params[:searchterm]
  @result = HTTParty.get "#{api_url}s=#{params[:searchterm]}"
  erb :search
end

# # About route
# get '/about' do
#   erb :about
# end

# views/layout.erb
# looks for yield
  # [views/index.erb]
  # [views/about.erb]

