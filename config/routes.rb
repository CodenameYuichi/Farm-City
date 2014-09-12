Rails.application.routes.draw do
  resources :images

  devise_for :users
  resources :users
  resources :places
  root 'home#index'
end
