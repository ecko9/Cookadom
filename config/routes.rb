
  root 'static_pages#home'
  
  resource :static_pages, only: [:home]
  
  
  resources :dishes
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
