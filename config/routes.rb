Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :videos do
    resources :likes, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show, :update, :destroy]

  root 'videos#index'
end
