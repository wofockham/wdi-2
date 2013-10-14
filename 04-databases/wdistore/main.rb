require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  connection = PG.connect(:dbname => 'wdistore', :host => 'localhost')
  connection.exec('SELECT * FROM products') do |result|
    result.each do |row|
      binding.pry
    end
  end
end
