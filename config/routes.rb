Rails.application.routes.draw do
  get 'comments/new'
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
  end
  resources :users, only: :show
end
