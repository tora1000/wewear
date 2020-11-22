Rails.application.routes.draw do
  devise_for :users
  root to: 'coordinations#index'
  resources :coordinations
  resources :users, only: :show
end
