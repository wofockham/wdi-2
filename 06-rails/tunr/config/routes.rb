Tunr::Application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

end
