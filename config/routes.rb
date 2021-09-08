Rails.application.routes.draw do
 
  get 'avatar/create'
  get 'avatar/destroy'
  get 'photos/create'
  get 'photos/destroy'
  root 'static_pages#home'
  
  resource :static_pages, only: [:home]
  
  resources :carts, only: [:create, :update, :destroy]
  
  resources :dishes do 
    resources :photos, only: [:create, :destroy]
  end
  resources :cooks, except: [:index]
  
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
