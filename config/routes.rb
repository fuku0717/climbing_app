Rails.application.routes.draw do
  devise_for :users
  root to: "mountains#index"
  resources :mountains do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit]
end
