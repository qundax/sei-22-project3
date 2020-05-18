Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get '/carparks' => 'carparks#index', as: 'carparks'
  get '/carparks/new' => 'carparks#new', as: 'new_carpark'
  post '/carparks' => 'carparks#create'
  get '/carparks/:id' => 'carparks#show' , as: 'carpark'
  get '/carparks/:id/edit' => 'carparks#edit', as: 'edit_carpark'
  patch '/carparks/:id' => 'carparks#update'
  delete '/carparks/:id' => 'carparks#destroy'

  get '/lots' => 'lots#index', as: 'lots'
  get '/lots/new' => 'lots#new', as: 'new_lot'
  post '/lots' => 'lots#create'
  get '/lots/:id' => 'lots#show' , as: 'lot'
  get '/lots/:id/edit' => 'lots#edit', as: 'edit_lot'
  patch '/lots/:id' => 'lots#update'
  delete '/lots/:id' => 'lots#destroy'


end