Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:show, :update, :index, :create]
  resources :users, only: [:show, :edit, :update, :create, :index]
  resources :homes, only: [:show, :update]
end
