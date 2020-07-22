Rails.application.routes.draw do
  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  get '/login',     to: 'session#new'
  post '/login',    to: 'session#create'
  delete '/logout', to: 'session#destroy'

  root 'home#index'
end
