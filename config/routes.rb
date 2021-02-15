Rails.application.routes.draw do
  
  devise_for :user
  resources :entrys
  root 'entrys#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  namespace :admin do
    devise_for :operators
    resources :staffs
    resources :tickets
    root 'admin/stffs#index'
   devise_scope :admin_operators do
     get '/operators/login' => 'sessions#new'
     get '/operators/sign_out' => 'devise/sessions#destroy'
   end
  end
  
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  
end
