Rails.application.routes.draw do

  resources :users
  resources :attractions
  resources :rides, only: :create
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  root 'users#index'

end
