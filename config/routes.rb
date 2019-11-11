Rails.application.routes.draw do
    
    # resources :trips
    # resources :operators
    # resources :rockets
    # resources :planets
    # resources :bookings
    # resources :bank_cards
    # resources :users

    # get '/', to: "application#home"


    resources :users, only: [:new, :create]
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'welcome', to: 'sessions#welcome'
    get '/', to: 'sessions#welcome'
    post 'logout', to: 'sessions#logout'

    get '/trips', to: "application#trips"
    get '/account', to: "application#account"

    get 'authorized', to: 'sessions#page_requires_login'

end
