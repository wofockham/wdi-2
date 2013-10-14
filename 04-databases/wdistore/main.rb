require 'sinatra'
require 'sinatra/reloader'
gem 'pg', '=0.15.1' # Only Joel requires this, comment it out in yours.
require 'pg'
require 'pry'

get '/' do
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @products = connection.exec('SELECT * FROM products')

  erb :index
end

get '/product/:id' do
  # Gross, we are repeating ourselves.
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @product = connection.exec("SELECT * FROM products WHERE id=#{params[:id]}")
  @product = @product.first

  erb :productview
end
