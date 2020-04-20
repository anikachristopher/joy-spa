Rails.application.routes.draw do

  resources :ratings
  resources :appointments
  resources :services

  root 'sessions#index'

  get '/signup' => 'clients#new'
  post '/signup' => 'clients#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
