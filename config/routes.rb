Rails.application.routes.draw do
  get 'comments/edit'
  get 'uploadlists/index'
  get 'likes/index'
  get 'likes/show'
  get 'likes/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  resources :users
  get 'songs/index'
  get 'songs/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'

end
