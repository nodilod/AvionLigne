Rails.application.routes.draw do
  get 'index/index'
  resources :reservations
  resources :flights
  resources :airports
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
