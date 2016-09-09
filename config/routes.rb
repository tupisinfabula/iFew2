Rails.application.routes.draw do

  devise_for :users
  resources :workouts
  root 'workouts#index'
  get '/auth/spotify/callback', to: 'users#spotify'
end
