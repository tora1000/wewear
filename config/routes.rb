Rails.application.routes.draw do
  root to: 'coordinations#index'
  resources :coordinations
end
