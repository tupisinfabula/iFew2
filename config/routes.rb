Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items
  end
  devise_for :users
  resources :workouts
  resources :progresses
  post '/history', to: 'workouts#history'
  post 'progresses/:id/edit', to: 'progresses#edit'
  root 'workouts#index'
  #get '/auth/spotify/callback', to: 'users#spotify'
end
