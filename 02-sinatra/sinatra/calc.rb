require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  @x = params[:x].to_f
  @y = params[:y].to_f
  @operation = 'multiply'

  @result = @x * @y
  erb :calc
end

get '/divide/:x/:y' do
  @x = params[:x].to_f
  @y = params[:y].to_f
  @operation = 'divide'

  @result = @x / @y
  erb :calc
end

get '/' do
  erb :form
end

get '/calc' do
  binding.pry
end

get '/about' do
  erb :about
end

