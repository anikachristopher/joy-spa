Rails.application.routes.draw do

  resources :ratings
  resources :appointments
  resources :services
  root 'sessions#index'
  get '/signup', to: "clients#new"
  get '/login' to: "sessions#new"
  post '/login' to: "sessions#create"
  delete '/logout' to: "sessions#destroy"

  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
