Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :groups
    resources :operations
  end

  root to: "users#index"
end
