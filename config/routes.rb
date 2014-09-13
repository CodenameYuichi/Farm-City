Rails.application.routes.draw do
  resources :comments

  devise_for :users
  resources :users
  resources :places do
    resources :images
  end
  root 'home#index'
end
