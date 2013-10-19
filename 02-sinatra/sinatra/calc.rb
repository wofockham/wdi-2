require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  erb :calc
end

get '/divide/:x/:y' do
  x = params[:x].to_f
  y = params[:y].to_f

  result = x / y
  erb :calc
end

