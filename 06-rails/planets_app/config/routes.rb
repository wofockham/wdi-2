PlanetsApp::Application.routes.draw do
  root :to => 'planets#index'
  get '/planets' => 'planets#index'
end
