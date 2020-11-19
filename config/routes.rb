Rails.application.routes.draw do
  devise_for :users
  root to: 'coordinations#index'
  get 'coordinations/index'
end
