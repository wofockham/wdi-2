BlogRailsApp::Application.routes.draw do
  root :to => 'pages#index'
  resources :posts
  resources :comments, :only => [:create]
end
