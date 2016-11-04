Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :events
      resources :causes, only: [:index, :show]
      resources :organizations, only: [:index, :show]
    end
  end
end
