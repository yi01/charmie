Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :products, only: [:new, :create, :edit, :update, :delete] do
    resources :reviews, only: [:new, :create, :show]
  end
  resources :users, only: [:show]
  root 'top#index'
end
