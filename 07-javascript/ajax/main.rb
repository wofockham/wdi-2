require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :home
end

get '/random' do
  @random = rand(1000)
  erb :random
end

get '/random.json' do
  @random = rand(1000)

  content_type :json
  result = {
    :random => @random
  }
  result.to_json
end
