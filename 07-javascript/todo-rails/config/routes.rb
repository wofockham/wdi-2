TodoRails::Application.routes.draw do
  root :to => 'pages#index'
  resources :users, :only => [:index, :new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :priorities, :only => [:index, :create]
end
