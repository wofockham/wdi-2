require 'sinatra'
require 'sinatra/reloader'
gem 'pg', '=0.15.1' # Only Joel requires this, comment it out in yours.
require 'pg'
require 'pry'

get '/' do
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  connection.exec('SELECT * FROM products')

  erb :index
end
