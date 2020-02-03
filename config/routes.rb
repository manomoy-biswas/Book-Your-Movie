Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
root 'home#index'
end
