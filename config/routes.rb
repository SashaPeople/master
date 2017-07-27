Rails.application.routes.draw do
  resources :railway_stations  
  resources :trains
  resources :routes
  resources :tickets
  resources :users
  resources :vagons 
  get 'welcome/index' 
  root 'welcome#index' 
end
