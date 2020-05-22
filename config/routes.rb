Rails.application.routes.draw do
  resources :vehicles
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  devise_for :admins, controllers: { sessions: "admins/sessions", registrations: "admins/registrations" }
  devise_for :summons, controllers: { sessions: "summons/sessions", registrations: "summons/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'

  get '/carparks' => 'carparks#index', as: 'carparks'
  get '/carparks/new' => 'carparks#new', as: 'new_carpark'
  post '/carparks' => 'carparks#create'
  get '/carparks/:id' => 'carparks#show' , as: 'carpark'
  get '/carparks/:id/edit' => 'carparks#edit', as: 'edit_carpark'
  patch '/carparks/:id' => 'carparks#update'
  delete '/carparks/:id' => 'carparks#destroy'

  get '/carparks/:id/lots' => 'lots#index', as: 'lots'
  get '/carparks/:id/lots/new' => 'lots#new', as: 'new_lot'
  post '/carparks/:id/lots' => 'lots#create'
  get '/lots/:id' => 'lots#show' , as: 'lot'
  get '/lots/:id/edit' => 'lots#edit', as: 'edit_lot'
  patch '/lots/:id' => 'lots#update'
  delete '/lots/:id' => 'lots#destroy'


  get '/regions' => 'regions#index', as: 'regions'
  #get '/regions/new' => 'regions#new', as: 'new_region'
  #post '/regions' => 'regions#create'
  get '/regions/:id' => 'regions#show' , as: 'region'
  #get '/regions/:id/edit' => 'regions#edit', as: 'edit_region'
  #patch '/regions/:id' => 'regions#update'
  #delete '/regions/:id' => 'regions#destroy'

  get '/role' => 'homes#role'
end