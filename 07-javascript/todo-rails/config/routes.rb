TodoRails::Application.routes.draw do
  root :to => 'pages#index'
  resources :users, :only => [:index, :new, :create]
end
