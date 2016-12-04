Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :progresses do
    get 'chart'
  end
  post '/history', to: 'workouts#history'
  post 'progresses/:id/edit', to: 'progresses#edit'
  root 'workouts#index'
  resources :todo_lists do
    resources :todo_items do
      member do
        # to mark the list as complete
        patch :complete
      end
    end
  end
end
