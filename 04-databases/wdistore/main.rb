require 'sinatra'
require 'sinatra/reloader'
gem 'pg', '=0.15.1' # Only Joel requires this, comment it out in yours.
require 'pg'
require 'pry'

get '/' do
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @products = connection.exec('SELECT * FROM products')
  connection.close

  erb :index
end

get '/products/new' do
  # We're just showing a form here so no need to talk to the database.
  erb :productnew
end

post '/products/create' do
  # Welcome to SQL quoting hell.

  # Because the 'quotes' around each of our values has a special meaning, we need to
  # 'escape' the quotes within our values by replacing ' with \\' using gsub
  query = "INSERT INTO products (name, description, price) VALUES ('#{params[:name].gsub(/'/, "\\'")}', '#{params[:description].gsub(/'/, "\\'")}', '#{params[:price]}')"
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  connection.exec(query)
  connection.close
  redirect to '/'
end

get '/products/:id/edit' do
  query = "SELECT * FROM products WHERE id=#{params[:id]}"
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @product = connection.exec(query)
  @product = @product.first # Remember, exec() returns a collection, even for 1 item.
  connection.close

  erb :productedit
end

get '/products/:id/delete' do
  # We don't need quotes around the id because it's numeric and that's okay with SQL
  query = "DELETE FROM products WHERE id=#{params[:id]}"
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  connection.exec(query)
  connection.close
  redirect to '/'
end

get '/products/:id' do
  # Gross, we are repeating ourselves.
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  @product = connection.exec("SELECT * FROM products WHERE id=#{params[:id]}")
  connection.close
  @product = @product.first

  if @product.nil?
    redirect to '/'
  end

  erb :productview
end
