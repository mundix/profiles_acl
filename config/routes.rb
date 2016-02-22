Rails.application.routes.draw do

  devise_for :users

  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  resources :home
  resources :roles
  resources :profiles

  # post "/profiles" => "profiles#create"
  # match 'users/sign_out' => "devise/sessions#destroy"
  root "home#index"
end
