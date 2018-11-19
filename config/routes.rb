Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users, :only => [:index, :show, :update, :destroy]

  resources :videos

  root 'users#index'
end
