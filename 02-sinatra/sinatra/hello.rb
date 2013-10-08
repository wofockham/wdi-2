require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Welcome to the homepage"
end

get '/hello' do
  "Hello world"
end

get '/mom' do
  "hi mom"
end

get '/hi/:name' do
  "Hi #{params[:name]}!!"
end

get '/hi/:name/:surname' do
  "Hi there, #{params[:name]} #{params[:surname]}"
end

get '/hi/:name/:surname/:age' do
  binding.pry
  "Hi there, #{params[:name]} #{params[:surname]}. You are #{params[:age]}"
end

get '/time' do
  Time.new.to_s
end
