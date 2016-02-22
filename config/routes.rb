Rails.application.routes.draw do

  devise_for :users
  resources :home
  resources :roles
  resources :profiles

  root "home#index"
end
