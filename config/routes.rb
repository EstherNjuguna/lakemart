Rails.application.routes.draw do
  resources :ratings
  resources :products
  resources :users
  resources :reviews
  resources :orders
  resources :carts
  resources :buyers

  get 'searches', to: 'searches#index'

  get 'trends', to: 'searches#trends'

  get 'trends/:search_id', to: 'products#trending'
  get 'toptrends', to: 'products#toptrends'

  get 'history', to: 'searches#history'
  post '/signup', to: 'users#create'
  post 'authentication/register', to: "authentication#create_account"
  post 'authentication/login', to: "authentication#login"
  get 'me', to: 'users#profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
