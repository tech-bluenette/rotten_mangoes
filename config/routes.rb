RottenMangoes::Application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "users/new"

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  
 resources :users, only: [:new, :create]
 resources :sessions, only: [:new, :create, :destroy]
end
