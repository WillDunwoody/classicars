Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :vehicles do
    resources :bookings, only: [:create]
  end

  resources :users, only: [:show]

  # Defines the root path route ("/")
  # root "articles#index"
end
