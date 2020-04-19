Rails.application.routes.draw do
  
  root 'sessions#index'
  get '/signup' => 'clients#new'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'

  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
