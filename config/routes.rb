Rails.application.routes.draw do
  resources :users
  get '/update_cities', to: 'users#update_cities'
  root 'users#new'
end
