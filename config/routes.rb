Rails.application.routes.draw do
  resources :railway_stations do 
    patch :update_position, on: :member
    patch :update_departure_time, on: :member
    patch :update_arrival_time, on: :member
  end
  resources :trains do 
    resources :vagons, shallow: true 
  end
  resources :routes
  resources :tickets
  resources :users
  get 'welcome/index' 
  root 'welcome#index' 
end
