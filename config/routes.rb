Rails.application.routes.draw do
  devise_for :users
  get 'mountains/index'
  root to: "mountains#index"
  resources :mountains do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
