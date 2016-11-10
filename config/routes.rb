Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :causes, only: [:index] do
        resources :events
      end
    end
  end
end
