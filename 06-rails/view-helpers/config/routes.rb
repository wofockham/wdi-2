ViewHelpers::Application.routes.draw do
  root :to => 'home#home'

  get '/numbers2' => 'home#numbers', :as => 'numbers'
  get '/text' => 'home#text'
  get '/assets' => 'home#assets'
  get '/url' => 'home#url'

  post '/test' => 'home#test'
end
