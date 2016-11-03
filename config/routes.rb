Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :events
      resources :causes
    end
  end
end
