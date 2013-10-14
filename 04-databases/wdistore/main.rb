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

get '/products/new' do
  # We're just showing a form here so no need to talk to the database.
  erb :productnew
end

get '/products/:id' do
  # Gross, we are repeating ourselves.
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @product = connection.exec("SELECT * FROM products WHERE id=#{params[:id]}")
  @product = @product.first

  if @product.nil?
    redirect to '/'
  end

  erb :productview
end
