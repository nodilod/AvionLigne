Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :flights
  resources :airports
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
