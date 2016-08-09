Rails.application.routes.draw do
  devise_for :users
  root "nurseries#index"
  resources :nurseries, only: :get
end
