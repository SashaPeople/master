Rails.application.routes.draw do
  devise_for :users
  #devise_for :installs
  resources :tickets

  namespace :admin do 
  resources :railway_stations do 
    patch :update_position, on: :member
    patch :update_departure_time, on: :member
    patch :update_arrival_time, on: :member
  end  

  resources :trains do 
    resources :vagons, shallow: true 
  end
  resources :routes
  resources :users
  resources :vagons 
  end

  get 'welcome/index' 
  root 'welcome#index' 
end
