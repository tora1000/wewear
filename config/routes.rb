Rails.application.routes.draw do
  root to: 'coordinations#index'
  get 'coordinations/index'
end
