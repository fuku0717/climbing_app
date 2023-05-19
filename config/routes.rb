Rails.application.routes.draw do
  devise_for :users
  get 'mountains/index'
  root to: "mountains#index"
  resources :mountains, only: [:index, :new, :create, :show, :edit, :update] do
  end
  resources :users, only: :show
end
