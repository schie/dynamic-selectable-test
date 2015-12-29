Rails.application.routes.draw do
  namespace :dynamic_selectable do
    get 'models/:model_id/vehicle_engines', to: 'model_vehicle_engines#index', as: :model_vehicle_engines
    get 'makes/:make_id/models', to: 'make_models#index', as: :make_models
  end

  resources :vehicles, only: [:new, :create]

  root 'vehicles#new'
end
