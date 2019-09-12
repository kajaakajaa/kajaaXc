Rails.application.routes.draw do
  # get 'comments/edit'

  # get 'uploadlists/index'
  # get 'likes/index'
  # get 'likes/show'
  # get 'likes/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'

  resources :likes
  resources :uploadlists
  resources :comments
  devise_for :users
  resources :users
  resources :songs
  
  # get 'songs/index'
  # get 'songs/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'

end
