require 'sinatra'
require 'sinatra/reloader'
gem 'pg', '=0.15.1' # Only Joel requires this, comment it out in yours.
require 'pg'
require 'pry'

get '/' do
  @products = query_db('SELECT * FROM products')

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
  query_db(query)
  redirect to '/'
end

get '/products/:id/edit' do
  query = "SELECT * FROM products WHERE id=#{params[:id]}"
  @product = query_db(query)
  @product = @product.first # Remember, exec() returns a collection, even for 1 item.

  erb :productedit
end

post '/products/update' do
  # Once again this will be all ruined by any quotes in the values.
  # Horrible unreadable gsub to the rescue again >: |
  query = "UPDATE products SET name='#{params[:name].gsub(/'/, "\\'")}', description='#{params[:description].gsub(/'/, "\\'")}', price='#{params[:price].gsub(/'/, "\\'")}' WHERE id=#{params[:id]}"
  query_db(query)

  redirect to "/products/#{params[:id]}"
end

get '/products/:id/delete' do
  # We don't need quotes around the id because it's numeric and that's okay with SQL
  query = "DELETE FROM products WHERE id=#{params[:id]}"
  query_db(query)
  redirect to '/'
end

get '/products/:id' do
  # Gross, we are repeating ourselves.
  @product = query_db("SELECT * FROM products WHERE id=#{params[:id]}")
  @product = @product.first

  if @product.nil?
    redirect to '/'
  end

  erb :productview
end

def query_db(query)
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  result = connection.exec(query)
  connection.close
  result
end
