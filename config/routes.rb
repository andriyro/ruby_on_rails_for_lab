Rails.application.routes.draw do
  resources :categories
  resources :lists
  resources :carts
  resources :userroles
  resources :shops
  resources :users
  resources :wares
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "greetings#hello", as: 'home'
  get 'info', to: "about#info", as: 'info'
  get 'index', to: 'posts#index', as: 'index'
  resources:posts
end
