NokogiriDemo::Application.routes.draw do
  root :to => 'pages#index'

  post '/search' => 'pinterest#show'
end
