Rails.application.routes.draw do
  get 'users/groups'
  get 'users/operations'
  devise_for :users
  resources :users, only: [ :index, :show] do
    resources :groups, only: [ :index, :show, :new, :create]
    resources :operations, only: [ :index, :show, :new, :create]
  end

  root to: "users#index"
end
