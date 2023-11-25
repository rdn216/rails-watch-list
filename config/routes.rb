Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: "lists#index"
    resources :lists, except: [:edit, :update] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: :destroy
  end