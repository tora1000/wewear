Rails.application.routes.draw do
  get 'coordinations/index'
  root to: "coordinations/index"
end
