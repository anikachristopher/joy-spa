Rails.application.routes.draw do
  get '/signup' => 'clients#new'
  get '/login' => 'sessions#new'
  
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
