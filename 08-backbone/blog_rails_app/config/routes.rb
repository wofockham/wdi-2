BlogRailsApp::Application.routes.draw do
  root :to => 'pages#index'
  resources :posts
end
