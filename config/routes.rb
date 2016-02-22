Rails.application.routes.draw do

  devise_for :users
  resources :home
  resources :roles
  resources :profiles

  # post "/profiles" => "profiles#create"

  root "home#index"
end
