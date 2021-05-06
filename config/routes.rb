Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
post 'books/id' => 'books#create'

  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:new, :create, :index, :show, :destroy, :edit, :update]
end
