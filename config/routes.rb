Rails.application.routes.draw do

  devise_for :users

  resources :users, :only => [:index, :show, :update, :destroy]

  resources :videos

  root 'videos#index'
end
