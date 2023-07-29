Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :clients
  devise_for :users

  root "home#index"

end
