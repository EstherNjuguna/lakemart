Rails.application.routes.draw do
  resources :ratings
  resources :products
  resources :users
  resources :reviews
  resources :orders
  resources :carts
  resources :buyers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
