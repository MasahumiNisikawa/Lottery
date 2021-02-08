Rails.application.routes.draw do
  devise_for :operators
  devise_for :users
  resources :entry
  resources :ticket

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
