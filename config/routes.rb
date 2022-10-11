Rails.application.routes.draw do
  get 'users/groups'
  get 'users/operations'
  devise_for :users
  resources :users, only: [ :index, :show] do
    resources :groups, only: [ :index, :show, :new, :create] do
      resources :operations, only: [ :index, :show, :new, :create]
    end
  end

  root to: "home#index"
end
