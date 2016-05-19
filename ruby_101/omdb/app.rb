require 'httparty'
require 'pp'
# require 'sinatra'
# require 'sinatra/reloader'

# @title = "Home"
# @omdb_data = HTTParty.get "http://www.omdbapi.com/?t=aliens&y=&plot=short&r=json"

api_url = "http://www.omdbapi.com/?"

# response = HTTParty.get "#{api_url}t=Harry Potter"
# response = HTTParty.get "#{api_url}t=Lord of the rings"
response = HTTParty.get "#{api_url}t=Alien&plot=full"
pp response

# # Home route
# get '/' do
#   "Index page"
#   # Insert json stuff here
#   # http://www.omdbapi.com/?
# end

# # About route
# get '/about' do
#   erb :about
# end

# views/layout.erb
# looks for yield
  # [views/index.erb]
  # [views/about.erb]

