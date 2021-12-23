Rails.application.routes.draw do
  get 'newbook/new'
  get 'userinfo/new'
  devise_for :users
  root to: 'homes#top'
  get  '/home/about'=> 'homes#show'
  resources :books, only: [:show, :update, :index, :create]
  resources :users, only: [:show, :edit, :update, :create, :index]
  resources :homes, only: [:show, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

end

