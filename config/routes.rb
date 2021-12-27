Rails.application.routes.draw do
  get 'newbook/new'
  get 'userinfo/new'
  devise_for :users
  root to: 'homes#top'
  get  '/home/about'=> 'homes#show'
  resources :books, only: [:show, :update, :index, :create, :edit, :destroy]
  resources :users, only: [:show, :edit, :update, :create, :index]
  resources :homes, only: [:show, :update]
end

