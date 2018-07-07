Rails.application.routes.draw do
  resources :bookings, defaults: {format: :json}
  resources :reservations, defaults: {format: :json}
  resources :appointments, defaults: {format: :json}
  resources :tables, defaults: {format: :json}
  resources :restaurants, defaults: {format: :json}
  resources :users, defaults: {format: :json}
  post 'user_token' => 'user_token#create'






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
