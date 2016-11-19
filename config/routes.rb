Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :causes, only: [:index, :show] do
        resources :events, only: [:index, :show, :new, :create] do
          resource :comments
        end
      end
    end
  end
end
