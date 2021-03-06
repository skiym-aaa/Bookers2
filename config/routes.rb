Rails.application.routes.draw do
  root to:'home#index'
  
  devise_for :users

  get 'home/about' => 'home#about'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
