require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :form
end

post '/' do
  binding.pry
end
