Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :welcome, :vehicles

  root to: 'welcome#index'
  
  get '/enter' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/newvehicle' => 'vehicles#new'
  post '/vehicle' => 'vehicles#create'
  get '/delete' => 'vehicles#destroy'
  
  patch '/oilchange' => 'vehicles#oilchange'
  get '/miles' => 'vehicles#mpg' 
  
  get '/log' => 'auto_logs#new'
  post '/entry' => 'auto_logs#create'
  
  
end
