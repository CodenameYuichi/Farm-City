Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :places
  root 'home#index'
end
