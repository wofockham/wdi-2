Fruitstore::Application.routes.draw do
  resources :fruits, :only => [:index, :new, :create, :show]
end
