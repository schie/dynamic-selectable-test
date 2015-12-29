Rails.application.routes.draw do
  namespace :dynamic_selectable do
    get ':model_id/vehicle_engines', to: 'vehicle_engines#index', as: :vehicle_engines
    get ':make_id/models', to: 'models#index', as: :models
  end

  resources :vehicles, only: [:new, :create]

  root 'vehicles#new'
end
