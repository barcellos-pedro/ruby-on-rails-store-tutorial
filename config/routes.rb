Rails.application.routes.draw do
  root "products#index"

  resource :session
  resources :passwords, param: :token

  resources :products do
    resources :subscribers, only: [ :create ]
  end

  resource :unsubscribe, only: [ :show ]

  get "up" => "rails/health#show", as: :rails_health_check
end
