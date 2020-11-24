Rails.application.routes.draw do
  devise_for :users
  root to: 'coordinations#index'
  resources :coordinations do
    collection do
      get :today_coordination
      get :week_coordination
    end
  end
  resources :users, only: :show
end
