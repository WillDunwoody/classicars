Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/bookings/:booking_id/reviews/new', to: 'reviews#new', as: :new_booking_review
  post '/bookings/:booking_id/reviews', to: 'reviews#create', as: :booking_reviews

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: %i[index show edit update destroy] do
    resources :bookings, only: [:create]
  end

  # resources :bookings, only: [:destroy] do
  #   resources :reviews, only: [:new, :create]
  # end

  resources :users, only: [:show]
  resources :vehicles, only: %i[new create]
end
