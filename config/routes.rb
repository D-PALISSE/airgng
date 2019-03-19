Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # as renter
  resources :goats, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [:show]

  resources :bookings, only: [:index] do # as both renter AND owner
    # as owner
    member do
      patch :accept # add accept & deny method to bookings controller that will change the status to accepted or denied
      patch :deny
    end
  end

  # as owner
  resources :my_goats, only: [:index, :new, :create] # Si on a le temps on pourra editer
end
