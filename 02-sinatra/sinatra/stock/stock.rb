require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do

  if params[:symbol]
    @symbol = params[:symbol].upcase
    @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  else
    @price = nil
  end

  erb :form
end