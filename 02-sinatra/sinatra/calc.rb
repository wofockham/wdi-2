require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "result is #{result}"
end

get '/divide/:x/:y' do
  x = params[:x].to_f
  y = params[:y].to_f

  result = x / y
  "result is #{result}"
end

