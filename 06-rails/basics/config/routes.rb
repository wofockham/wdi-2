Basics::Application.routes.draw do
  root :to => 'pages#welcome'
  get '/home' => 'pages#home'
  get '/faq' => 'pages#faq'
  get '/google' => 'pages#google'

  get '/auto/:colour' => 'auto#colour'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:y/:operator' => 'calc#calculate'
end
