Rails.application.routes.draw do
  resources :dashbords, only: [:index]
  devise_for :users
  resources :users
  resources :places do
    resources :favourites, only: [:create, :destroy]
    resources :images
    resources :comments
  end
  root 'home#index'
end
