Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes, only: [:create, :new, :index, :show, :edit, :update, :destroy] do
  resources :comments, only: [:create]
  end
end
