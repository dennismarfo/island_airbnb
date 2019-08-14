Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :properties
    resources :users, only: [:show]

    namespace :users do
      resources :properties, only: [:index_properties]
    end

    get 'user_properties', to: 'properties#user_properties', as: :user_properties

    get 'user_voyages_bookings', to: 'bookings#user_voyages_bookings', as: :user_voyages_bookings

    get 'user_properties_bookings', to: 'bookings#user_properties_bookings', as: :user_properties_bookings

end
