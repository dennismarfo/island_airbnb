Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :properties do
      resources :reviews, only: [:new, :create]
    end

    resources :users, only: [:show]


    resources :properties do
      resources :bookings, only: [:create, :new, :destroy]
    end
   resources :bookings, only: [:index]

    namespace :owner do
      resources :properties, only: [:index]
      resources :bookings, only: [:index]
    end

    get 'user_properties', to: 'properties#user_properties', as: :user_properties

    get 'user_voyages_bookings', to: 'bookings#user_voyages_bookings', as: :user_voyages_bookings

    get 'user_properties_bookings', to: 'bookings#user_properties_bookings', as: :user_properties_bookings

end
