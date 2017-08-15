Rails.application.routes.draw do
  resources :railway_stations do 
    patch :update_position, on: :member
  end  

  resources :trains do 
    resources :vagons, shallow: true 
  end
  resources :routes
  resources :tickets
  resources :users
  resources :vagons 
  get 'welcome/index' 
  root 'welcome#index' 
end
