Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :welcome, :vehicles

  root to: 'welcome#index'
  
  get '/enter' => 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/newvehicle' => 'vehicles#new'
  post '/vehicle' => 'vehicles#create'
  get '/delete' => 'vehicles#destroy'
  
end
