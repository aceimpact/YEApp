Rails.application.routes.draw do

  devise_for :users
  resources :users

  resources :videos

  root 'users#index'
end
