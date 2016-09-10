Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items
  end
  devise_for :users
  resources :workouts

  post '/history', to: 'workouts#history'

  root 'workouts#index'
  #get '/auth/spotify/callback', to: 'users#spotify'
end
