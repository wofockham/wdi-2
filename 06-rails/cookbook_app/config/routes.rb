CookbookApp::Application.routes.draw do
  resources :books, :recipes, :ingredients
end
