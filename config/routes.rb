Rails.application.routes.draw do
  root "products#index"

  resource :session
  resources :passwords, param: :token
  resource :sign_up

  namespace :settings do
    resource :password, only: [ :show, :update ]
  end

  resources :products do
    resources :subscribers, only: [ :create ]
  end

  resource :unsubscribe, only: [ :show ]

  get "up" => "rails/health#show", as: :rails_health_check
end
