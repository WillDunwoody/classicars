Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:show] do
    resources :vehicles, only: [:new, :create, :edit, :update, :destroy]
  end

end
