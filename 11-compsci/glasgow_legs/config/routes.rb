GlasgowLegs::Application.routes.draw do
  root :to => 'pages#home'
  resources :destinations

end
