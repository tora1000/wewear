Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: 'coordinations#index'
  resources :coordinations do
    collection do
      get :today_coordination
      get :week_coordination
    end
    resources :comments, only: [:create,:new]
  end
  resources :users, only: :show
end
