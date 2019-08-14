Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :properties

    resources :users, only: [:show]


    resources :properties do
      resources :bookings, only: [:index, :show, :create, :new, :destroy]
    end

    namespace :users do
      resources :properties, only: [:index_properties]
    end
end
