Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks' 
    
  }
  root 'categories#index'
  resources :add_cards
  resources :profile

  resources :orders 
  
  resources :add_cards 

  resources :categories do
    resources :subcategories do
      member do
        get 'new_order'
        post 'create_order'
        get 'add_card'
      end
    end
  end

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
