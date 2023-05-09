Rails.application.routes.draw do
  get 'mountains/index'
  root to: "mountains#index"
end
