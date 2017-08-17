Rails.application.routes.draw do
  resources :railway_stations do 
    patch :update_position,       on: :member
    patch :update_departure_time, on: :member
    patch :update_arrival_time,   on: :member
  end  

  resources :trains do 
    resources :vagons, shallow: true 
  end
  resources :routes
  resources :tickets
  resources :users do 
    resources :tickets, shallow: true
  end
  resource :search, only: [:new, :edit, :show]
  get 'welcome/index' 
  root 'welcome#index' 
end
