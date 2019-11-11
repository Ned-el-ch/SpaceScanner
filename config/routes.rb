Rails.application.routes.draw do
  resources :trips
  resources :operators
  resources :rockets
  resources :planets
  resources :bookings
  resources :bank_cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
