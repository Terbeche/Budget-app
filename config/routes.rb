Rails.application.routes.draw do
  get 'users/groups'
  get 'users/operations'
  get '/splash', to: 'splash#index', as: 'splash'
  get '/home', to: 'home#index', as: 'home'

  devise_for :users
  resources :users, only: [ :index, :show] do
    resources :groups, only: [ :index, :show, :new, :create] do
      resources :operations, only: [ :index, :show, :new, :create]
    end
  end

  namespace :users do
    root :to => "home#index"
  end
  
  root to: "splash#index"
end
