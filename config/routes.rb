Rails.application.routes.draw do
  resources :railway_stations do 
    patch :update_position, on: :member
  end
  resources :trains
  resources :routes
  resources :tickets
  resources :users
  get 'welcome/index' 
  root 'welcome#index' 
end
