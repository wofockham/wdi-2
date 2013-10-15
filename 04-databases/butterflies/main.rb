gem 'pg', '=0.15.1'

require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

before do
  query = "SELECT DISTINCT family, COUNT(*) AS count FROM butterflies GROUP BY family"
  @nav_rows = query_sql(query)
end

get '/butterflies/:butterfly_id/edit/' do
  query = "SELECT * FROM butterflies WHERE id=#{params[:butterfly_id]}"
  @row = query_sql(query).first
  erb :new
end

post '/butterflies/:butterfly_id/delete' do
  query = "DELETE FROM butterflies WHERE id=#{params[:butterfly_id]}"
  query_sql(query)
  redirect to '/butterflies'
end

get '/butterflies/new' do
  erb :new
end

post '/butterflies/:butterfly_id/update' do
  query = "UPDATE butterflies SET name='#{params[:name]}', family='#{params[:family]}', image='#{params[:image]}' WHERE id=#{params[:butterfly_id]}"
  query_sql(query)
  redirect to '/butterflies'
end

get '/butterflies/:family' do
  query = "SELECT * FROM butterflies WHERE family='#{params[:family]}'"
  @rows = query_sql(query)
  erb :butterflies
end

get '/' do
  erb :home
end

get '/butterflies' do
  query = 'SELECT * FROM butterflies ORDER BY id DESC'
  @rows = query_sql(query)
  erb :butterflies
end

post '/butterflies/create' do
  query = "INSERT INTO butterflies (name, family, image) VALUES ('#{params[:name]}', '#{params[:family]}', '#{params[:image]}')"
  query_sql(query)
  redirect to '/butterflies'
end

def query_sql(sql)
  connection = PG.connect(:dbname => 'butterflies', :host => 'localhost')
  result = connection.exec(sql)
  connection.close
  result
end
