Rails.application.routes.draw do
  root "products#index"

  # CRUD Products
  # resources :products

  get "/products", to: "products#index"

  get "/products/new", to: "products#new"
  post "/products", to: "products#create"

  get "/products/:id", to: "products#show"

  get "/products/:id/edit", to: "products#edit"
  put "/products/:id", to: "products#update"
  patch "/products/:id", to: "products#update"

  delete "/products/:id", to: "products#destroy"


  get "up" => "rails/health#show", as: :rails_health_check
end
