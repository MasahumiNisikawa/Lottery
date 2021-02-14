Rails.application.routes.draw do

  root 'entrys#index'
  devise_for :user
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  namespace :admin do
    devise_for :operators
    resources :staffs
   devise_scope :admin_operators do
     get 'login', to: 'sessions#new'
   end
  end
  
  get 'entrys/index'
  get '/entrys' => 'entrys#index'
  resources :tickets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  
end
