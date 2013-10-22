PlanetsApp::Application.routes.draw do
  root :to => 'planets#index'

  get '/planets' => 'planets#index'
  get '/planets/:id' => 'planets#show', :as => 'planet'
  get '/planets/new' => 'planets#new'
  post '/planets' => 'planets#create'
  get '/planets/:id/edit' => 'planets#edit', :as => 'planet_edit'
  post '/planets/:id' => 'planets#update'
  post '/planets/:id/delete' => 'planets#destroy', :as => 'planet_delete'
end
