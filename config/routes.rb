Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  root 'static_pages#landing_page'

  

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
