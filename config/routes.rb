Rails.application.routes.draw do
  
  devise_for :user,controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations' 
    }
  resources :entrys
  root 'entrys#index'
  devise_scope :user do
    delete '/users/sign_out' => 'users/sessions#destroy'
  end
  
  namespace :admin do
    devise_for :operators,controllers: {
      sessions: 'admin/operators/sessions'
    }
    resources :tickets
    root 'admin/tickets#index'
   devise_scope :admin_operators do
     get '/admin/operators/login' => 'admin/operators/sessions#new'
     delete '/admin/operators/sign_out' => 'admin/operators/sessions#destroy'
   end
  end
  
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  
end
