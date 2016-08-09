Rails.application.routes.draw do
  devise_for :users
  root "about#index"
  resources :about, only: :index
  resources :nurseries, only: [:index, :show]
end
