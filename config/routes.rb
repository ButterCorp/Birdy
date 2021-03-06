Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  devise_for :users
  resources :users do
    get :following, :followers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :relationships,       only: [:create, :destroy]
end
