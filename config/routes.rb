Rails.application.routes.draw do
  resources :railway_stations do 
    patch :update_position, on: :member
<<<<<<< HEAD
  end
  resources :trains
=======
  end  

  resources :trains do 
    resources :vagons, shallow: true 
  end
>>>>>>> master_yoda
  resources :routes
  resources :tickets
  resources :users
  get 'welcome/index' 
  root 'welcome#index' 
end
