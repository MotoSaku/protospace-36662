Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  # get 'prototypes/index'
  # get '/users/sign_up', to: 'devise/registrations#new'
  # post '/users', to: 'devise/registrations#create'
  # get '/users/sign_in', to: 'devise/sessions#new'
  # delete '/users/sign_out', to: 'devise/sessions#destroy'
  # post '/prototypes', to: 'prototypes#create'

  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end

  resources :users, only: :show

end
