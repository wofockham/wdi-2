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
  max = params[:max_rand]

  max = 1000 unless max

  @random = rand(max.to_i)
  content_type :json
  result = {
    :random => @random
  }
  result.to_json
end

get '/random.html' do
  @random = rand(1000)
  "<span>#{@random}</span>"
end