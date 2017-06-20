Rails.application.routes.draw do
  root 'sessions#new'

  # sessions
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :attractions
  resources :users

  # rides
  post "/rides/new", to: "rides#new"
end
