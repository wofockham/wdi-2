Fruitstore::Application.routes.draw do
  resources :fruits, :only => [:index]
end
