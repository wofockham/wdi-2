Tunr::Application.routes.draw do
  get '/artist_facts/edit_all' => 'artist_facts#edit_all',
      :as => 'edit_all_artist_facts'
  post '/artist_facts/update_all' => 'artist_facts#update_all'
  resources :artist_facts

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
