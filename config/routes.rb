Rails.application.routes.draw do
  resources :bookings
  resources :reservations
  resources :appointments
  resources :tables
  resources :restaurants
  resources :users
  resources :yelp
  post 'user_token' => 'user_token#create'

  post 'get_restaurant' => 'yelp#get_restaurant'
  post 'search' => 'yelp#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
